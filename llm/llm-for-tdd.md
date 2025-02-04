# Using a Large Language Model to generate Chisel tests

[Back](../index.md#llm){: .button .section}

Model used GPT-3.5

**Prompt:**

```
Use the following piece of Chisel HDL code to answer the question. If you don't know the answer, just say that you don't know, don't try to make up an answer.

class Fact extends Module {
  val io = IO(new Bundle {
    val in  = Flipped(Decoupled(UInt(16.W)))
    val out = Valid(UInt(16.W))
  })
})

Question: Create a unit test suite for Fact. The test needs use the WriteVcdAnnotation annotation

Scenario: "should be able to calculate fact"
Steps:
1. Assert if signal in is true.B
2. poke signal in.bits with 5.U and set in.valid signal true.B
3. Step 5 clock cycle
4. Assert out.valid is true.B
5. Assert out.bit is 120.U
```

**Response:**

```
import chisel3._
import chisel3.tester._
import chisel3.util._
import chiseltest.experimental.TestOptionBuilder._
import chiseltest.internal.WriteVcdAnnotation
import org.scalatest.freespec.AnyFreeSpec

class FactSpec extends AnyFreeSpec with ChiselScalatestTester {

  "Fact" - {

    "should be able to calculate fact" in {
      test(new Fact).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
        // Step 1
        dut.io.in.ready.poke(true.B)

        // Step 2
        dut.io.in.bits.poke(5.U)
        dut.io.in.valid.poke(true.B)

        // Step 3
        dut.clock.step(5)

        // Step 4
        dut.io.out.valid.expect(true.B)

        // Step 5
        dut.io.out.bits.expect(120.U)
      }
    }
  }
}
```

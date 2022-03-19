# VFS

## Superblock

Superblock is the container for high level metadata

## inode

All objects are managed through index node(inode). It can be a file, symbol link or device

## dentry

Directories are represented via the dentry node. At the root level `/` there is dentry node which is referenced in superblock

## dcache

The dentry cache provides a lookup mechanism from pathname to dentry node. It exists only in RAM

## file object

For each opened file a file object is created

# Reference

- [Overview of VFS @ kernel.org](https://www.kernel.org/doc/html/latest/filesystems/vfs.html)
- [VFS Tutorial @ developer.ibm.com](https://developer.ibm.com/tutorials/l-virtual-filesystem-switch/)

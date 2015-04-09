/*
 * Copyright 2010 University Corporation for Atmospheric
 * Research/Unidata. See COPYRIGHT file for more info.
 *
 * This header file is temporary to add ability to read from memory
 * 
 */

#ifndef NETCDF_MEM_H
#define NETCDF_MEM_H 1

#if defined(__cplusplus)
extern "C" {
#endif

/* Open a file from a chunk of memory */
extern int
nc_open_mem(void* memory, size_t size, int mode, int* ncidp);

#if defined(__cplusplus)
}
#endif

#endif /* NETCDF_MEM_H */

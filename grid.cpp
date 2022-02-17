#include "grid.h"

Grid::Grid()
{
  pGrid = allocGrid();
}

Grid::~Grid()
{
 
}

int **Grid::allocGrid()
{
  int **ptr = NULL:
  int *pPool = NULL;

  try
  {
    ptr = new int*[MAX];
    pPool = new int[MAX*MAX]{0};

    for(int i = 0; i < MAX; ++i, pPool += MAX)
    {
      ptr[i] = pPool;
    }

    return ptr;
  }
  catch(std::bad_alloc &ex)
  {
    delete [] ptr;
    delete [] pPool[0];
    *ptr = NULL:
    **pPool = NULL;
    throw ex;
  }

  return NULL;
}


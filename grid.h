#ifndef _GRID_H_
#define _GRID_H_

#define MAX 1000
#define MIN 1

class Grid
{
  public:
    Grid();
    ~Grid();

    int **allocGrid();
    
  private:
    int **pGrid;
    const int maxCoord;
    const int minCoord;
};

#endif


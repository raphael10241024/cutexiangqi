#ifndef XIANGQIBOARD_H
#define XIANGQIBOARD_H

#include "board.h"
namespace Chess {

class LIB_EXPORT XiangqiBoard : public Board
{
public:
    enum PieceType
    {
        General = 1, // 将
        Advisor,     // 士
        Elephant,    // 相
        Horse,       // 马
        Chariot,     // 车
        Cannon,      // 炮
        Solider,     // 兵
    };

    int width() const override { return 9; }
    int height() const override { return 10; }
    Result result() override;
    int reversibleMoveCount() const override;

    XiangqiBoard();

protected:
    static const unsigned AdvisorMovement = 2;
    static const unsigned ElephantMovement = 4;

    enum StepType
    {
        NoStep = 0,
        FreeStep = 1,
        CaptureStep = 2
    };
};

}


#endif // XIANGQIBOARD_H

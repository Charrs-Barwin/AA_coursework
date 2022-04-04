require "pry"

$board = [
    1,2,3,
    4,5,6,
    7,8,9
]
WIN_CONDITIONS = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [1,4,7],
    [2,5,8],
    [3,6,9],
    [1,5,9],
    [3,5,7]
]

$p1 = []
$p2 = []

def p1take(num)
    return "already taken" if !$board.include?(num)
    $p1<<$board.delete(num)
    check_win($p1)? p("Player 1 wins!") : p("Player 1 takes square "+num.to_s)
    $p1
    $board
end

def p2take(num)
    return "already taken" if !$board.include?(num)
    $p2<<$board.delete(num)
    check_win($p2)? p("Player 2 wins!") : p("Player 2 takes square "+num.to_s)
    $p2
    $board
end

def check_win(p)
    WIN_CONDITIONS.any?{|c| (c-p).empty?}   #c == c.intersection(p)}
end

binding.pry
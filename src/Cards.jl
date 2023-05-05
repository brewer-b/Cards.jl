module Cards

export Card

#Cards are in range 1:52, in ascending order (2c,2d,2h,2s,3c,3d,3h,3s,4c,...)
struct Card
    value::Unsigned
end

function Base.show(io::IO, c::Card)
    rank = ((c.value - 1) ÷ 4) + 1
    suit = ((c.value - 1) % 4) + 1
    print(io, "23456789TJQKA"[rank])
    print(io, ["♣","♦","♥","♠"][suit])
end

end

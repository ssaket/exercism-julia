using OrderedCollections
using DataStructures;

function encode(s)
    q = Queue{Char}()
    str = ""
    ctr = 0
    s === "" && return ""
    map(x -> enqueue!(q, x), collect(s))
    lastchr = first(q)
    while(!isempty(q))
        x = dequeue!(q)
        if (lastchr == x)
            ctr += 1
        else
            str *= ctr > 1 ? string(ctr) * string(lastchr) : string(lastchr)
            ctr = 1
        lastchr = x 
        end
    end
    str *= ctr > 1 ? string(ctr) * string(lastchr) : string(lastchr)
    return str
end



function decode(s)
    q = Queue{Char}()
    str = ""
    intr = 0
    map(x -> enqueue!(q, x), collect(s))
    while(!isempty(q))
        x = dequeue!(q)
        try
            x = parse(Int, x)
        catch
        end
        if (string(typeof(x)) == "Char")
            if intr != 0
                str = str * x^intr
            else
                str = str * x
            end
            intr = 0
        else
            intr = intr*10 + x
        end
    end
    return str
end

.class public abstract LT5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Channel(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)LT5/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "LH5/l;",
            ")",
            "LT5/c;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->b:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 4
    .line 5
    if-eq p0, v0, :cond_6

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_4

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    const v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILH5/l;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance v0, LT5/n;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, LT5/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 32
    .line 33
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILH5/l;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    if-ne p1, v2, :cond_3

    .line 38
    .line 39
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILH5/l;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    new-instance p0, LT5/n;

    .line 47
    .line 48
    invoke-direct {p0, v1, p1, p2}, LT5/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    if-ne p1, v2, :cond_5

    .line 53
    .line 54
    new-instance p0, LT5/n;

    .line 55
    .line 56
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 57
    .line 58
    invoke-direct {p0, v1, p1, p2}, LT5/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_6
    if-ne p1, v2, :cond_7

    .line 71
    .line 72
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 73
    .line 74
    sget-object p1, LT5/c;->a:LT5/b;

    .line 75
    .line 76
    invoke-virtual {p1}, LT5/b;->getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILH5/l;)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_7
    new-instance p0, LT5/n;

    .line 85
    .line 86
    invoke-direct {p0, v1, p1, p2}, LT5/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)V

    .line 87
    .line 88
    .line 89
    return-object p0
.end method

.method public static synthetic Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;ILjava/lang/Object;)LT5/c;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->b:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 11
    .line 12
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2}, LT5/f;->Channel(ILkotlinx/coroutines/channels/BufferOverflow;LH5/l;)LT5/c;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

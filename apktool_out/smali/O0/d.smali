.class public final synthetic LO0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/w;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LO0/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, LO0/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, LJ0/m;

    .line 7
    .line 8
    iget-object v0, p1, LJ0/m;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "com.apple.iTunes"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, LJ0/m;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "iTunSMPB"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    return p1

    .line 32
    :pswitch_0
    check-cast p1, LJ0/e;

    .line 33
    .line 34
    iget-object p1, p1, LJ0/e;->c:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "iTunSMPB"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :pswitch_1
    check-cast p1, Ls0/b;

    .line 44
    .line 45
    iget-object p1, p1, Ls0/b;->a:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "auxiliary.tracks.map"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :pswitch_2
    check-cast p1, Ls0/b;

    .line 55
    .line 56
    iget-object p1, p1, Ls0/b;->a:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "auxiliary.tracks.offset"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :pswitch_3
    check-cast p1, Ls0/b;

    .line 66
    .line 67
    iget-object p1, p1, Ls0/b;->a:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "auxiliary.tracks.interleaved"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :pswitch_4
    check-cast p1, LJ0/p;

    .line 77
    .line 78
    iget-object p1, p1, LJ0/k;->a:Ljava/lang/String;

    .line 79
    .line 80
    const-string v0, "TLEN"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

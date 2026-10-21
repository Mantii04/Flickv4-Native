.class final enum Lorg/jsoup/parser/TokeniserState$37;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BeforeAttributeValue"

    .line 2
    .line 3
    const/16 v1, 0x24

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/b;Lk6/a;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->W:Lorg/jsoup/parser/TokeniserState$40;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    if-eq v0, v2, :cond_5

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0x60

    .line 18
    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 22
    .line 23
    const v3, 0xffff

    .line 24
    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x9

    .line 29
    .line 30
    if-eq v0, v3, :cond_5

    .line 31
    .line 32
    const/16 v3, 0xa

    .line 33
    .line 34
    if-eq v0, v3, :cond_5

    .line 35
    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    if-eq v0, v3, :cond_5

    .line 39
    .line 40
    const/16 v3, 0xd

    .line 41
    .line 42
    if-eq v0, v3, :cond_5

    .line 43
    .line 44
    const/16 v3, 0x26

    .line 45
    .line 46
    if-eq v0, v3, :cond_1

    .line 47
    .line 48
    const/16 v3, 0x27

    .line 49
    .line 50
    if-eq v0, v3, :cond_0

    .line 51
    .line 52
    packed-switch v0, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lk6/a;->l()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->k()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->V:Lorg/jsoup/parser/TokeniserState$39;

    .line 71
    .line 72
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Lk6/a;->l()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->k()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lk6/n;->i(C)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->U:Lorg/jsoup/parser/TokeniserState$38;

    .line 102
    .line 103
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 104
    .line 105
    :cond_5
    return-void

    .line 106
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 110
    .line 111
    const v0, 0xfffd

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Lk6/n;->i(C)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

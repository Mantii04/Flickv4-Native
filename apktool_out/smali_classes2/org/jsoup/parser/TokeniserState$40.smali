.class final enum Lorg/jsoup/parser/TokeniserState$40;
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
    const-string v0, "AttributeValue_unquoted"

    .line 2
    .line 3
    const/16 v1, 0x27

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
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->B0:[C

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lk6/a;->e([C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lk6/n;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_6

    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    if-eq p2, v0, :cond_5

    .line 27
    .line 28
    const/16 v0, 0x22

    .line 29
    .line 30
    if-eq p2, v0, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x60

    .line 33
    .line 34
    if-eq p2, v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 37
    .line 38
    const v1, 0xffff

    .line 39
    .line 40
    .line 41
    if-eq p2, v1, :cond_3

    .line 42
    .line 43
    const/16 v1, 0x9

    .line 44
    .line 45
    if-eq p2, v1, :cond_5

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    if-eq p2, v1, :cond_5

    .line 50
    .line 51
    const/16 v1, 0xc

    .line 52
    .line 53
    if-eq p2, v1, :cond_5

    .line 54
    .line 55
    const/16 v1, 0xd

    .line 56
    .line 57
    if-eq p2, v1, :cond_5

    .line 58
    .line 59
    const/16 v1, 0x26

    .line 60
    .line 61
    if-eq p2, v1, :cond_1

    .line 62
    .line 63
    const/16 v1, 0x27

    .line 64
    .line 65
    if-eq p2, v1, :cond_4

    .line 66
    .line 67
    packed-switch p2, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lk6/n;->i(C)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->k()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    const/16 p2, 0x3e

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, p2, v0}, Lorg/jsoup/parser/b;->c(Ljava/lang/Character;Z)[I

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lk6/n;->k([I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lk6/n;->i(C)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lk6/n;->i(C)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Q:Lorg/jsoup/parser/TokeniserState$34;

    .line 123
    .line 124
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 131
    .line 132
    const p2, 0xfffd

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lk6/n;->i(C)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

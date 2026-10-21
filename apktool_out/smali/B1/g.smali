.class public final LB1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LB1/g;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()LB1/h;
    .locals 2

    .line 1
    new-instance v0, LB1/h;

    .line 2
    .line 3
    iget-object v1, p0, LB1/g;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LB1/h;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, LB1/h;->toByteArrayInternal(LB1/h;)[B

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)LB1/g;
    .locals 3

    .line 1
    iget-object v0, p0, LB1/g;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-class v2, Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eq v1, v2, :cond_8

    .line 17
    .line 18
    const-class v2, Ljava/lang/Byte;

    .line 19
    .line 20
    if-eq v1, v2, :cond_8

    .line 21
    .line 22
    const-class v2, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eq v1, v2, :cond_8

    .line 25
    .line 26
    const-class v2, Ljava/lang/Long;

    .line 27
    .line 28
    if-eq v1, v2, :cond_8

    .line 29
    .line 30
    const-class v2, Ljava/lang/Float;

    .line 31
    .line 32
    if-eq v1, v2, :cond_8

    .line 33
    .line 34
    const-class v2, Ljava/lang/Double;

    .line 35
    .line 36
    if-eq v1, v2, :cond_8

    .line 37
    .line 38
    const-class v2, Ljava/lang/String;

    .line 39
    .line 40
    if-eq v1, v2, :cond_8

    .line 41
    .line 42
    const-class v2, [Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eq v1, v2, :cond_8

    .line 45
    .line 46
    const-class v2, [Ljava/lang/Byte;

    .line 47
    .line 48
    if-eq v1, v2, :cond_8

    .line 49
    .line 50
    const-class v2, [Ljava/lang/Integer;

    .line 51
    .line 52
    if-eq v1, v2, :cond_8

    .line 53
    .line 54
    const-class v2, [Ljava/lang/Long;

    .line 55
    .line 56
    if-eq v1, v2, :cond_8

    .line 57
    .line 58
    const-class v2, [Ljava/lang/Float;

    .line 59
    .line 60
    if-eq v1, v2, :cond_8

    .line 61
    .line 62
    const-class v2, [Ljava/lang/Double;

    .line 63
    .line 64
    if-eq v1, v2, :cond_8

    .line 65
    .line 66
    const-class v2, [Ljava/lang/String;

    .line 67
    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-class v2, [Z

    .line 72
    .line 73
    if-ne v1, v2, :cond_2

    .line 74
    .line 75
    check-cast p2, [Z

    .line 76
    .line 77
    invoke-static {p2}, LB1/h;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_2
    const-class v2, [B

    .line 86
    .line 87
    if-ne v1, v2, :cond_3

    .line 88
    .line 89
    check-cast p2, [B

    .line 90
    .line 91
    invoke-static {p2}, LB1/h;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    const-class v2, [I

    .line 100
    .line 101
    if-ne v1, v2, :cond_4

    .line 102
    .line 103
    check-cast p2, [I

    .line 104
    .line 105
    invoke-static {p2}, LB1/h;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_4
    const-class v2, [J

    .line 114
    .line 115
    if-ne v1, v2, :cond_5

    .line 116
    .line 117
    check-cast p2, [J

    .line 118
    .line 119
    invoke-static {p2}, LB1/h;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_5
    const-class v2, [F

    .line 128
    .line 129
    if-ne v1, v2, :cond_6

    .line 130
    .line 131
    check-cast p2, [F

    .line 132
    .line 133
    invoke-static {p2}, LB1/h;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_6
    const-class v2, [D

    .line 142
    .line 143
    if-ne v1, v2, :cond_7

    .line 144
    .line 145
    check-cast p2, [D

    .line 146
    .line 147
    invoke-static {p2}, LB1/h;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, "Key "

    .line 160
    .line 161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p1, "has invalid type "

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p2

    .line 183
    :cond_8
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    return-object p0
.end method

.method public putAll(LB1/h;)LB1/g;
    .locals 0

    .line 1
    iget-object p1, p1, LB1/h;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LB1/g;->putAll(Ljava/util/Map;)LB1/g;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)LB1/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "LB1/g;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v1, v0}, LB1/g;->put(Ljava/lang/String;Ljava/lang/Object;)LB1/g;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)LB1/g;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/g;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

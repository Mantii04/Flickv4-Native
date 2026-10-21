.class public final Landroidx/datastore/preferences/protobuf/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/datastore/preferences/protobuf/p0;

.field public static final c:Landroidx/datastore/preferences/protobuf/q0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/p0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/I0;->b:Landroidx/datastore/preferences/protobuf/p0;

    .line 7
    .line 8
    new-instance v0, Landroidx/datastore/preferences/protobuf/q0;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/datastore/preferences/protobuf/I0;->c:Landroidx/datastore/preferences/protobuf/q0;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/I0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BBBB[CI)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    shl-int/lit8 v0, p0, 0x1c

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x70

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    shr-int/lit8 v0, v1, 0x1e

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    and-int/lit8 p0, p0, 0x7

    .line 29
    .line 30
    shl-int/lit8 p0, p0, 0x12

    .line 31
    .line 32
    and-int/lit8 p1, p1, 0x3f

    .line 33
    .line 34
    shl-int/lit8 p1, p1, 0xc

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    and-int/lit8 p1, p2, 0x3f

    .line 38
    .line 39
    shl-int/lit8 p1, p1, 0x6

    .line 40
    .line 41
    or-int/2addr p0, p1

    .line 42
    and-int/lit8 p1, p3, 0x3f

    .line 43
    .line 44
    or-int/2addr p0, p1

    .line 45
    ushr-int/lit8 p1, p0, 0xa

    .line 46
    .line 47
    const p2, 0xd7c0

    .line 48
    .line 49
    .line 50
    add-int/2addr p1, p2

    .line 51
    int-to-char p1, p1

    .line 52
    aput-char p1, p4, p5

    .line 53
    .line 54
    add-int/lit8 p5, p5, 0x1

    .line 55
    .line 56
    and-int/lit16 p0, p0, 0x3ff

    .line 57
    .line 58
    const p1, 0xdc00

    .line 59
    .line 60
    .line 61
    add-int/2addr p0, p1

    .line 62
    int-to-char p0, p0

    .line 63
    aput-char p0, p4, p5

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    throw p0
.end method

.method public static b(BB[CI)V
    .locals 1

    .line 1
    const/16 v0, -0x3e

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0x1f

    .line 12
    .line 13
    shl-int/lit8 p0, p0, 0x6

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0x3f

    .line 16
    .line 17
    or-int/2addr p0, p1

    .line 18
    int-to-char p0, p0

    .line 19
    aput-char p0, p2, p3

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public static c(BBB[CI)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/16 v0, -0x20

    .line 8
    .line 9
    const/16 v1, -0x60

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    if-lt p1, v1, :cond_2

    .line 14
    .line 15
    :cond_0
    const/16 v0, -0x13

    .line 16
    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    if-ge p1, v1, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/I0;->h(B)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    and-int/lit8 p0, p0, 0xf

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0xc

    .line 30
    .line 31
    and-int/lit8 p1, p1, 0x3f

    .line 32
    .line 33
    shl-int/lit8 p1, p1, 0x6

    .line 34
    .line 35
    or-int/2addr p0, p1

    .line 36
    and-int/lit8 p1, p2, 0x3f

    .line 37
    .line 38
    or-int/2addr p0, p1

    .line 39
    int-to-char p0, p0

    .line 40
    aput-char p0, p3, p4

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v3, "_"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static g(Landroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/v0;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/v0;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/v0;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/v0;->byteAt(I)B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x22

    .line 27
    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    .line 30
    const/16 v3, 0x27

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    const/16 v3, 0x5c

    .line 35
    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    .line 38
    packed-switch v2, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    if-lt v2, v4, :cond_0

    .line 44
    .line 45
    const/16 v4, 0x7e

    .line 46
    .line 47
    if-gt v2, v4, :cond_0

    .line 48
    .line 49
    int-to-char v2, v2

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    ushr-int/lit8 v3, v2, 0x6

    .line 58
    .line 59
    and-int/lit8 v3, v3, 0x3

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x30

    .line 62
    .line 63
    int-to-char v3, v3

    .line 64
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    ushr-int/lit8 v3, v2, 0x3

    .line 68
    .line 69
    and-int/lit8 v3, v3, 0x7

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x30

    .line 72
    .line 73
    int-to-char v3, v3

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    and-int/lit8 v2, v2, 0x7

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x30

    .line 80
    .line 81
    int-to-char v2, v2

    .line 82
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_0
    const-string v2, "\\r"

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_1
    const-string v2, "\\f"

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_2
    const-string v2, "\\v"

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_3
    const-string v2, "\\n"

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_4
    const-string v2, "\\t"

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_5
    const-string v2, "\\b"

    .line 117
    .line 118
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_6
    const-string v2, "\\a"

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const-string v2, "\\\\"

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const-string v2, "\\\'"

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const-string v2, "\\\""

    .line 141
    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static final j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p3, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p3, Ljava/util/Map;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p3, Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-static {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    return-void

    .line 56
    :cond_2
    const/16 v0, 0xa

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    move v1, v0

    .line 63
    :goto_2
    const/16 v2, 0x20

    .line 64
    .line 65
    if-ge v1, p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    instance-of p2, p3, Ljava/lang/String;

    .line 77
    .line 78
    const/16 v1, 0x22

    .line 79
    .line 80
    const-string v3, ": \""

    .line 81
    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    check-cast p3, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/I0;->g(Landroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    instance-of p2, p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 105
    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 112
    .line 113
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/I0;->g(Landroidx/datastore/preferences/protobuf/ByteString;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    instance-of p2, p3, Landroidx/datastore/preferences/protobuf/F;

    .line 125
    .line 126
    const-string v1, "}"

    .line 127
    .line 128
    const-string v3, "\n"

    .line 129
    .line 130
    const-string v4, " {"

    .line 131
    .line 132
    if-eqz p2, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    check-cast p3, Landroidx/datastore/preferences/protobuf/F;

    .line 138
    .line 139
    add-int/lit8 p2, p1, 0x2

    .line 140
    .line 141
    invoke-static {p3, p0, p2}, Landroidx/datastore/preferences/protobuf/I0;->k(Landroidx/datastore/preferences/protobuf/F;Ljava/lang/StringBuilder;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :goto_3
    if-ge v0, p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 160
    .line 161
    if-eqz p2, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    check-cast p3, Ljava/util/Map$Entry;

    .line 167
    .line 168
    add-int/lit8 p2, p1, 0x2

    .line 169
    .line 170
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "key"

    .line 175
    .line 176
    invoke-static {p0, p2, v5, v4}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const-string v4, "value"

    .line 180
    .line 181
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-static {p0, p2, v4, p3}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    :goto_4
    if-ge v0, p1, :cond_8

    .line 192
    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_9
    const-string p1, ": "

    .line 204
    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public static k(Landroidx/datastore/preferences/protobuf/F;Ljava/lang/StringBuilder;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/TreeSet;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    :goto_0
    const-string v10, "get"

    .line 34
    .line 35
    if-ge v9, v7, :cond_1

    .line 36
    .line 37
    aget-object v11, v6, v9

    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    array-length v12, v12

    .line 51
    if-nez v12, :cond_0

    .line 52
    .line 53
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-virtual {v3, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_0

    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v5, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_11

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    const-string v7, ""

    .line 97
    .line 98
    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const-string v11, "List"

    .line 103
    .line 104
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    const/4 v13, 0x1

    .line 109
    if-eqz v12, :cond_3

    .line 110
    .line 111
    const-string v12, "OrBuilderList"

    .line 112
    .line 113
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-nez v12, :cond_3

    .line 118
    .line 119
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_3

    .line 124
    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    add-int/lit8 v12, v12, -0x4

    .line 146
    .line 147
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    check-cast v12, Ljava/lang/reflect/Method;

    .line 163
    .line 164
    if-eqz v12, :cond_3

    .line 165
    .line 166
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    const-class v15, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-eqz v14, :cond_3

    .line 177
    .line 178
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/I0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    new-array v7, v8, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {v12, v0, v7}, Landroidx/datastore/preferences/protobuf/F;->c(Ljava/lang/reflect/Method;Landroidx/datastore/preferences/protobuf/a0;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v1, v2, v6, v7}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    const-string v11, "Map"

    .line 193
    .line 194
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_4

    .line 199
    .line 200
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-nez v11, :cond_4

    .line 205
    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    add-int/lit8 v12, v12, -0x3

    .line 227
    .line 228
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    check-cast v6, Ljava/lang/reflect/Method;

    .line 244
    .line 245
    if-eqz v6, :cond_4

    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    const-class v14, Ljava/util/Map;

    .line 252
    .line 253
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_4

    .line 258
    .line 259
    const-class v12, Ljava/lang/Deprecated;

    .line 260
    .line 261
    invoke-virtual {v6, v12}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-nez v12, :cond_4

    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-eqz v12, :cond_4

    .line 276
    .line 277
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/I0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    new-array v9, v8, [Ljava/lang/Object;

    .line 282
    .line 283
    invoke-static {v6, v0, v9}, Landroidx/datastore/preferences/protobuf/F;->c(Ljava/lang/reflect/Method;Landroidx/datastore/preferences/protobuf/a0;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v1, v2, v7, v6}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_4
    const-string v6, "set"

    .line 293
    .line 294
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    check-cast v6, Ljava/lang/reflect/Method;

    .line 303
    .line 304
    if-nez v6, :cond_5

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_5
    const-string v6, "Bytes"

    .line 309
    .line 310
    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_6

    .line 315
    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    add-int/lit8 v11, v11, -0x5

    .line 326
    .line 327
    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_6

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    check-cast v11, Ljava/lang/reflect/Method;

    .line 382
    .line 383
    const-string v12, "has"

    .line 384
    .line 385
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    check-cast v9, Ljava/lang/reflect/Method;

    .line 394
    .line 395
    if-eqz v11, :cond_2

    .line 396
    .line 397
    new-array v12, v8, [Ljava/lang/Object;

    .line 398
    .line 399
    invoke-static {v11, v0, v12}, Landroidx/datastore/preferences/protobuf/F;->c(Ljava/lang/reflect/Method;Landroidx/datastore/preferences/protobuf/a0;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    if-nez v9, :cond_10

    .line 404
    .line 405
    instance-of v9, v11, Ljava/lang/Boolean;

    .line 406
    .line 407
    if-eqz v9, :cond_7

    .line 408
    .line 409
    move-object v7, v11

    .line 410
    check-cast v7, Ljava/lang/Boolean;

    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    xor-int/2addr v7, v13

    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :cond_7
    instance-of v9, v11, Ljava/lang/Integer;

    .line 420
    .line 421
    if-eqz v9, :cond_9

    .line 422
    .line 423
    move-object v7, v11

    .line 424
    check-cast v7, Ljava/lang/Integer;

    .line 425
    .line 426
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-nez v7, :cond_8

    .line 431
    .line 432
    :goto_2
    move v7, v13

    .line 433
    goto :goto_3

    .line 434
    :cond_8
    move v7, v8

    .line 435
    goto :goto_3

    .line 436
    :cond_9
    instance-of v9, v11, Ljava/lang/Float;

    .line 437
    .line 438
    if-eqz v9, :cond_a

    .line 439
    .line 440
    move-object v7, v11

    .line 441
    check-cast v7, Ljava/lang/Float;

    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    const/4 v9, 0x0

    .line 448
    cmpl-float v7, v7, v9

    .line 449
    .line 450
    if-nez v7, :cond_8

    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_a
    instance-of v9, v11, Ljava/lang/Double;

    .line 454
    .line 455
    if-eqz v9, :cond_b

    .line 456
    .line 457
    move-object v7, v11

    .line 458
    check-cast v7, Ljava/lang/Double;

    .line 459
    .line 460
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 461
    .line 462
    .line 463
    move-result-wide v14

    .line 464
    const-wide/16 v16, 0x0

    .line 465
    .line 466
    cmpl-double v7, v14, v16

    .line 467
    .line 468
    if-nez v7, :cond_8

    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_b
    instance-of v9, v11, Ljava/lang/String;

    .line 472
    .line 473
    if-eqz v9, :cond_c

    .line 474
    .line 475
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    goto :goto_3

    .line 480
    :cond_c
    instance-of v7, v11, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 481
    .line 482
    if-eqz v7, :cond_d

    .line 483
    .line 484
    sget-object v7, Landroidx/datastore/preferences/protobuf/ByteString;->e:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 485
    .line 486
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    goto :goto_3

    .line 491
    :cond_d
    instance-of v7, v11, Landroidx/datastore/preferences/protobuf/a0;

    .line 492
    .line 493
    if-eqz v7, :cond_e

    .line 494
    .line 495
    move-object v7, v11

    .line 496
    check-cast v7, Landroidx/datastore/preferences/protobuf/a0;

    .line 497
    .line 498
    check-cast v7, Landroidx/datastore/preferences/protobuf/F;

    .line 499
    .line 500
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/F;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/a0;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    if-ne v11, v7, :cond_8

    .line 505
    .line 506
    goto :goto_2

    .line 507
    :cond_e
    instance-of v7, v11, Ljava/lang/Enum;

    .line 508
    .line 509
    if-eqz v7, :cond_8

    .line 510
    .line 511
    move-object v7, v11

    .line 512
    check-cast v7, Ljava/lang/Enum;

    .line 513
    .line 514
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-nez v7, :cond_8

    .line 519
    .line 520
    goto :goto_2

    .line 521
    :goto_3
    if-nez v7, :cond_f

    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_f
    move v13, v8

    .line 525
    goto :goto_4

    .line 526
    :cond_10
    new-array v7, v8, [Ljava/lang/Object;

    .line 527
    .line 528
    invoke-static {v9, v0, v7}, Landroidx/datastore/preferences/protobuf/F;->c(Ljava/lang/reflect/Method;Landroidx/datastore/preferences/protobuf/a0;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    check-cast v7, Ljava/lang/Boolean;

    .line 533
    .line 534
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 535
    .line 536
    .line 537
    move-result v13

    .line 538
    :goto_4
    if-eqz v13, :cond_2

    .line 539
    .line 540
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/I0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-static {v1, v2, v6, v11}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_1

    .line 548
    .line 549
    :cond_11
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 550
    .line 551
    if-eqz v0, :cond_12

    .line 552
    .line 553
    :goto_5
    iget v3, v0, Landroidx/datastore/preferences/protobuf/x0;->a:I

    .line 554
    .line 555
    if-ge v8, v3, :cond_12

    .line 556
    .line 557
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/x0;->b:[I

    .line 558
    .line 559
    aget v3, v3, v8

    .line 560
    .line 561
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/K0;->getTagFieldNumber(I)I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/x0;->c:[Ljava/lang/Object;

    .line 570
    .line 571
    aget-object v4, v4, v8

    .line 572
    .line 573
    invoke-static {v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/I0;->j(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    add-int/lit8 v8, v8, 0x1

    .line 577
    .line 578
    goto :goto_5

    .line 579
    :cond_12
    return-void
.end method

.method public static l(J[BII)I
    .locals 2

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p4, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p4, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    add-long/2addr p0, v0

    .line 16
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p3, p4, p0}, Landroidx/datastore/preferences/protobuf/J0;->d(III)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p3, p0}, Landroidx/datastore/preferences/protobuf/J0;->c(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/J0;->a:Landroidx/datastore/preferences/protobuf/I0;

    .line 41
    .line 42
    const/16 p0, -0xc

    .line 43
    .line 44
    if-le p3, p0, :cond_3

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    return p0

    .line 48
    :cond_3
    return p3
.end method


# virtual methods
.method public final e(I[BI)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "buffer length=%d, index=%d, size=%d"

    .line 6
    .line 7
    const/16 v3, -0x10

    .line 8
    .line 9
    const/16 v4, -0x20

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    move-object/from16 v9, p0

    .line 16
    .line 17
    iget v10, v9, Landroidx/datastore/preferences/protobuf/I0;->a:I

    .line 18
    .line 19
    packed-switch v10, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    or-int v10, p1, v1

    .line 23
    .line 24
    array-length v11, v0

    .line 25
    sub-int v11, v11, p1

    .line 26
    .line 27
    sub-int/2addr v11, v1

    .line 28
    or-int/2addr v10, v11

    .line 29
    if-ltz v10, :cond_9

    .line 30
    .line 31
    add-int v2, p1, v1

    .line 32
    .line 33
    new-array v14, v1, [C

    .line 34
    .line 35
    move/from16 v1, p1

    .line 36
    .line 37
    move v10, v5

    .line 38
    :goto_0
    if-ge v1, v2, :cond_0

    .line 39
    .line 40
    int-to-long v11, v1

    .line 41
    invoke-static {v11, v12, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-ltz v11, :cond_0

    .line 46
    .line 47
    add-int/2addr v1, v8

    .line 48
    add-int/lit8 v12, v10, 0x1

    .line 49
    .line 50
    int-to-char v11, v11

    .line 51
    aput-char v11, v14, v10

    .line 52
    .line 53
    move v10, v12

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v15, v10

    .line 56
    :goto_1
    if-ge v1, v2, :cond_8

    .line 57
    .line 58
    add-int/lit8 v10, v1, 0x1

    .line 59
    .line 60
    int-to-long v11, v1

    .line 61
    invoke-static {v11, v12, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-ltz v11, :cond_2

    .line 66
    .line 67
    add-int/lit8 v1, v15, 0x1

    .line 68
    .line 69
    int-to-char v11, v11

    .line 70
    aput-char v11, v14, v15

    .line 71
    .line 72
    :goto_2
    if-ge v10, v2, :cond_1

    .line 73
    .line 74
    int-to-long v11, v10

    .line 75
    invoke-static {v11, v12, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-ltz v11, :cond_1

    .line 80
    .line 81
    add-int/2addr v10, v8

    .line 82
    add-int/lit8 v12, v1, 0x1

    .line 83
    .line 84
    int-to-char v11, v11

    .line 85
    aput-char v11, v14, v1

    .line 86
    .line 87
    move v1, v12

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    move v15, v1

    .line 90
    move/from16 v16, v7

    .line 91
    .line 92
    move/from16 v17, v8

    .line 93
    .line 94
    move v1, v10

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    if-ge v11, v4, :cond_4

    .line 97
    .line 98
    if-ge v10, v2, :cond_3

    .line 99
    .line 100
    add-int/2addr v1, v7

    .line 101
    int-to-long v12, v10

    .line 102
    invoke-static {v12, v13, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    add-int/lit8 v12, v15, 0x1

    .line 107
    .line 108
    invoke-static {v11, v10, v14, v15}, Landroidx/datastore/preferences/protobuf/I0;->b(BB[CI)V

    .line 109
    .line 110
    .line 111
    move/from16 v16, v7

    .line 112
    .line 113
    move/from16 v17, v8

    .line 114
    .line 115
    move v15, v12

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    throw v0

    .line 122
    :cond_4
    if-ge v11, v3, :cond_6

    .line 123
    .line 124
    add-int/lit8 v12, v2, -0x1

    .line 125
    .line 126
    if-ge v10, v12, :cond_5

    .line 127
    .line 128
    add-int/lit8 v12, v1, 0x2

    .line 129
    .line 130
    move/from16 v16, v7

    .line 131
    .line 132
    move/from16 v17, v8

    .line 133
    .line 134
    int-to-long v7, v10

    .line 135
    invoke-static {v7, v8, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    add-int/2addr v1, v6

    .line 140
    int-to-long v12, v12

    .line 141
    invoke-static {v12, v13, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    add-int/lit8 v10, v15, 0x1

    .line 146
    .line 147
    invoke-static {v11, v7, v8, v14, v15}, Landroidx/datastore/preferences/protobuf/I0;->c(BBB[CI)V

    .line 148
    .line 149
    .line 150
    move v15, v10

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_6
    move/from16 v16, v7

    .line 158
    .line 159
    move/from16 v17, v8

    .line 160
    .line 161
    add-int/lit8 v7, v2, -0x2

    .line 162
    .line 163
    if-ge v10, v7, :cond_7

    .line 164
    .line 165
    add-int/lit8 v7, v1, 0x2

    .line 166
    .line 167
    int-to-long v12, v10

    .line 168
    invoke-static {v12, v13, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    add-int/lit8 v10, v1, 0x3

    .line 173
    .line 174
    int-to-long v12, v7

    .line 175
    invoke-static {v12, v13, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    add-int/lit8 v1, v1, 0x4

    .line 180
    .line 181
    int-to-long v3, v10

    .line 182
    invoke-static {v3, v4, v0}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    move v10, v11

    .line 187
    move v11, v8

    .line 188
    invoke-static/range {v10 .. v15}, Landroidx/datastore/preferences/protobuf/I0;->a(BBBB[CI)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v15, v15, 0x2

    .line 192
    .line 193
    :goto_3
    move/from16 v7, v16

    .line 194
    .line 195
    move/from16 v8, v17

    .line 196
    .line 197
    const/16 v3, -0x10

    .line 198
    .line 199
    const/16 v4, -0x20

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    throw v0

    .line 208
    :cond_8
    new-instance v0, Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v0, v14, v5, v15}, Ljava/lang/String;-><init>([CII)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_9
    move/from16 v16, v7

    .line 215
    .line 216
    move/from16 v17, v8

    .line 217
    .line 218
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 219
    .line 220
    array-length v0, v0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-array v6, v6, [Ljava/lang/Object;

    .line 234
    .line 235
    aput-object v0, v6, v5

    .line 236
    .line 237
    aput-object v4, v6, v17

    .line 238
    .line 239
    aput-object v1, v6, v16

    .line 240
    .line 241
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v3

    .line 249
    :pswitch_0
    move/from16 v16, v7

    .line 250
    .line 251
    move/from16 v17, v8

    .line 252
    .line 253
    or-int v3, p1, v1

    .line 254
    .line 255
    array-length v4, v0

    .line 256
    sub-int v4, v4, p1

    .line 257
    .line 258
    sub-int/2addr v4, v1

    .line 259
    or-int/2addr v3, v4

    .line 260
    if-ltz v3, :cond_13

    .line 261
    .line 262
    add-int v2, p1, v1

    .line 263
    .line 264
    new-array v14, v1, [C

    .line 265
    .line 266
    move/from16 v1, p1

    .line 267
    .line 268
    move v3, v5

    .line 269
    :goto_4
    if-ge v1, v2, :cond_a

    .line 270
    .line 271
    aget-byte v4, v0, v1

    .line 272
    .line 273
    if-ltz v4, :cond_a

    .line 274
    .line 275
    add-int/lit8 v1, v1, 0x1

    .line 276
    .line 277
    add-int/lit8 v8, v3, 0x1

    .line 278
    .line 279
    int-to-char v4, v4

    .line 280
    aput-char v4, v14, v3

    .line 281
    .line 282
    move v3, v8

    .line 283
    goto :goto_4

    .line 284
    :cond_a
    move v15, v3

    .line 285
    :goto_5
    if-ge v1, v2, :cond_12

    .line 286
    .line 287
    add-int/lit8 v8, v1, 0x1

    .line 288
    .line 289
    aget-byte v10, v0, v1

    .line 290
    .line 291
    if-ltz v10, :cond_c

    .line 292
    .line 293
    add-int/lit8 v1, v15, 0x1

    .line 294
    .line 295
    int-to-char v3, v10

    .line 296
    aput-char v3, v14, v15

    .line 297
    .line 298
    :goto_6
    if-ge v8, v2, :cond_b

    .line 299
    .line 300
    aget-byte v3, v0, v8

    .line 301
    .line 302
    if-ltz v3, :cond_b

    .line 303
    .line 304
    add-int/lit8 v8, v8, 0x1

    .line 305
    .line 306
    add-int/lit8 v4, v1, 0x1

    .line 307
    .line 308
    int-to-char v3, v3

    .line 309
    aput-char v3, v14, v1

    .line 310
    .line 311
    move v1, v4

    .line 312
    goto :goto_6

    .line 313
    :cond_b
    move v15, v1

    .line 314
    move v1, v8

    .line 315
    const/16 v3, -0x20

    .line 316
    .line 317
    :goto_7
    const/16 v7, -0x10

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_c
    const/16 v3, -0x20

    .line 321
    .line 322
    if-ge v10, v3, :cond_e

    .line 323
    .line 324
    if-ge v8, v2, :cond_d

    .line 325
    .line 326
    add-int/lit8 v1, v1, 0x2

    .line 327
    .line 328
    aget-byte v4, v0, v8

    .line 329
    .line 330
    add-int/lit8 v8, v15, 0x1

    .line 331
    .line 332
    invoke-static {v10, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/I0;->b(BB[CI)V

    .line 333
    .line 334
    .line 335
    move v15, v8

    .line 336
    goto :goto_7

    .line 337
    :cond_d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    throw v0

    .line 342
    :cond_e
    const/16 v7, -0x10

    .line 343
    .line 344
    if-ge v10, v7, :cond_10

    .line 345
    .line 346
    add-int/lit8 v4, v2, -0x1

    .line 347
    .line 348
    if-ge v8, v4, :cond_f

    .line 349
    .line 350
    add-int/lit8 v4, v1, 0x2

    .line 351
    .line 352
    aget-byte v8, v0, v8

    .line 353
    .line 354
    add-int/2addr v1, v6

    .line 355
    aget-byte v4, v0, v4

    .line 356
    .line 357
    add-int/lit8 v11, v15, 0x1

    .line 358
    .line 359
    invoke-static {v10, v8, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/I0;->c(BBB[CI)V

    .line 360
    .line 361
    .line 362
    move v15, v11

    .line 363
    goto :goto_5

    .line 364
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    throw v0

    .line 369
    :cond_10
    add-int/lit8 v4, v2, -0x2

    .line 370
    .line 371
    if-ge v8, v4, :cond_11

    .line 372
    .line 373
    add-int/lit8 v4, v1, 0x2

    .line 374
    .line 375
    aget-byte v11, v0, v8

    .line 376
    .line 377
    add-int/lit8 v8, v1, 0x3

    .line 378
    .line 379
    aget-byte v12, v0, v4

    .line 380
    .line 381
    add-int/lit8 v1, v1, 0x4

    .line 382
    .line 383
    aget-byte v13, v0, v8

    .line 384
    .line 385
    invoke-static/range {v10 .. v15}, Landroidx/datastore/preferences/protobuf/I0;->a(BBBB[CI)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v15, v15, 0x2

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_11
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    throw v0

    .line 396
    :cond_12
    new-instance v0, Ljava/lang/String;

    .line 397
    .line 398
    invoke-direct {v0, v14, v5, v15}, Ljava/lang/String;-><init>([CII)V

    .line 399
    .line 400
    .line 401
    return-object v0

    .line 402
    :cond_13
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 403
    .line 404
    array-length v0, v0

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    new-array v6, v6, [Ljava/lang/Object;

    .line 418
    .line 419
    aput-object v0, v6, v5

    .line 420
    .line 421
    aput-object v4, v6, v17

    .line 422
    .line 423
    aput-object v1, v6, v16

    .line 424
    .line 425
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v3

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;[BII)I
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget v5, v3, Landroidx/datastore/preferences/protobuf/I0;->a:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    int-to-long v5, v2

    .line 17
    int-to-long v7, v4

    .line 18
    add-long/2addr v7, v5

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    const-string v10, " at index "

    .line 24
    .line 25
    const-string v11, "Failed writing "

    .line 26
    .line 27
    if-gt v9, v4, :cond_c

    .line 28
    .line 29
    array-length v12, v1

    .line 30
    sub-int/2addr v12, v4

    .line 31
    if-lt v12, v2, :cond_c

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    const-wide/16 v12, 0x1

    .line 35
    .line 36
    const/16 v4, 0x80

    .line 37
    .line 38
    if-ge v2, v9, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    if-ge v14, v4, :cond_0

    .line 45
    .line 46
    add-long/2addr v12, v5

    .line 47
    int-to-byte v4, v14

    .line 48
    invoke-static {v1, v5, v6, v4}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    move-wide v5, v12

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    if-ne v2, v9, :cond_2

    .line 56
    .line 57
    :cond_1
    long-to-int v0, v5

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_2
    :goto_1
    if-ge v2, v9, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    if-ge v14, v4, :cond_3

    .line 67
    .line 68
    cmp-long v15, v5, v7

    .line 69
    .line 70
    if-gez v15, :cond_3

    .line 71
    .line 72
    add-long v15, v5, v12

    .line 73
    .line 74
    int-to-byte v14, v14

    .line 75
    invoke-static {v1, v5, v6, v14}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 76
    .line 77
    .line 78
    move-wide/from16 v20, v7

    .line 79
    .line 80
    move-wide/from16 p3, v12

    .line 81
    .line 82
    move-wide v5, v15

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_3
    const/16 v15, 0x800

    .line 86
    .line 87
    const-wide/16 v16, 0x2

    .line 88
    .line 89
    if-ge v14, v15, :cond_4

    .line 90
    .line 91
    sub-long v18, v7, v16

    .line 92
    .line 93
    cmp-long v15, v5, v18

    .line 94
    .line 95
    if-gtz v15, :cond_4

    .line 96
    .line 97
    move-wide/from16 p3, v12

    .line 98
    .line 99
    add-long v12, v5, p3

    .line 100
    .line 101
    ushr-int/lit8 v15, v14, 0x6

    .line 102
    .line 103
    or-int/lit16 v15, v15, 0x3c0

    .line 104
    .line 105
    int-to-byte v15, v15

    .line 106
    invoke-static {v1, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 107
    .line 108
    .line 109
    add-long v5, v5, v16

    .line 110
    .line 111
    and-int/lit8 v14, v14, 0x3f

    .line 112
    .line 113
    or-int/2addr v14, v4

    .line 114
    int-to-byte v14, v14

    .line 115
    invoke-static {v1, v12, v13, v14}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 116
    .line 117
    .line 118
    move-wide/from16 v20, v7

    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_4
    move-wide/from16 p3, v12

    .line 123
    .line 124
    const v12, 0xdfff

    .line 125
    .line 126
    .line 127
    const v13, 0xd800

    .line 128
    .line 129
    .line 130
    const-wide/16 v18, 0x3

    .line 131
    .line 132
    if-lt v14, v13, :cond_6

    .line 133
    .line 134
    if-ge v12, v14, :cond_5

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-wide/from16 v20, v7

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    :goto_2
    sub-long v20, v7, v18

    .line 141
    .line 142
    cmp-long v15, v5, v20

    .line 143
    .line 144
    if-gtz v15, :cond_5

    .line 145
    .line 146
    add-long v12, v5, p3

    .line 147
    .line 148
    ushr-int/lit8 v15, v14, 0xc

    .line 149
    .line 150
    or-int/lit16 v15, v15, 0x1e0

    .line 151
    .line 152
    int-to-byte v15, v15

    .line 153
    invoke-static {v1, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 154
    .line 155
    .line 156
    move-wide/from16 v20, v7

    .line 157
    .line 158
    add-long v7, v5, v16

    .line 159
    .line 160
    ushr-int/lit8 v15, v14, 0x6

    .line 161
    .line 162
    and-int/lit8 v15, v15, 0x3f

    .line 163
    .line 164
    or-int/2addr v15, v4

    .line 165
    int-to-byte v15, v15

    .line 166
    invoke-static {v1, v12, v13, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 167
    .line 168
    .line 169
    add-long v5, v5, v18

    .line 170
    .line 171
    and-int/lit8 v12, v14, 0x3f

    .line 172
    .line 173
    or-int/2addr v12, v4

    .line 174
    int-to-byte v12, v12

    .line 175
    invoke-static {v1, v7, v8, v12}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :goto_3
    const-wide/16 v7, 0x4

    .line 180
    .line 181
    sub-long v22, v20, v7

    .line 182
    .line 183
    cmp-long v15, v5, v22

    .line 184
    .line 185
    if-gtz v15, :cond_9

    .line 186
    .line 187
    add-int/lit8 v12, v2, 0x1

    .line 188
    .line 189
    if-eq v12, v9, :cond_8

    .line 190
    .line 191
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v14, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-eqz v13, :cond_7

    .line 200
    .line 201
    invoke-static {v14, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    add-long v13, v5, p3

    .line 206
    .line 207
    ushr-int/lit8 v15, v2, 0x12

    .line 208
    .line 209
    or-int/lit16 v15, v15, 0xf0

    .line 210
    .line 211
    int-to-byte v15, v15

    .line 212
    invoke-static {v1, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 213
    .line 214
    .line 215
    move-wide/from16 v22, v7

    .line 216
    .line 217
    add-long v7, v5, v16

    .line 218
    .line 219
    ushr-int/lit8 v15, v2, 0xc

    .line 220
    .line 221
    and-int/lit8 v15, v15, 0x3f

    .line 222
    .line 223
    or-int/2addr v15, v4

    .line 224
    int-to-byte v15, v15

    .line 225
    invoke-static {v1, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 226
    .line 227
    .line 228
    add-long v13, v5, v18

    .line 229
    .line 230
    ushr-int/lit8 v15, v2, 0x6

    .line 231
    .line 232
    and-int/lit8 v15, v15, 0x3f

    .line 233
    .line 234
    or-int/2addr v15, v4

    .line 235
    int-to-byte v15, v15

    .line 236
    invoke-static {v1, v7, v8, v15}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 237
    .line 238
    .line 239
    add-long v5, v5, v22

    .line 240
    .line 241
    and-int/lit8 v2, v2, 0x3f

    .line 242
    .line 243
    or-int/2addr v2, v4

    .line 244
    int-to-byte v2, v2

    .line 245
    invoke-static {v1, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/H0;->j([BJB)V

    .line 246
    .line 247
    .line 248
    move v2, v12

    .line 249
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 250
    .line 251
    move-wide/from16 v12, p3

    .line 252
    .line 253
    move-wide/from16 v7, v20

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_7
    move v2, v12

    .line 258
    :cond_8
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 259
    .line 260
    add-int/lit8 v2, v2, -0x1

    .line 261
    .line 262
    invoke-direct {v0, v2, v9}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :cond_9
    if-gt v13, v14, :cond_b

    .line 267
    .line 268
    if-gt v14, v12, :cond_b

    .line 269
    .line 270
    add-int/lit8 v1, v2, 0x1

    .line 271
    .line 272
    if-eq v1, v9, :cond_a

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-static {v14, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_b

    .line 283
    .line 284
    :cond_a
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 285
    .line 286
    invoke-direct {v0, v2, v9}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 291
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :goto_5
    return v0

    .line 315
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 316
    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    add-int/lit8 v9, v9, -0x1

    .line 323
    .line 324
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    add-int v0, v2, v4

    .line 335
    .line 336
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v1

    .line 347
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    add-int/2addr v4, v2

    .line 352
    const/4 v6, 0x0

    .line 353
    :goto_6
    const/16 v7, 0x80

    .line 354
    .line 355
    if-ge v6, v5, :cond_d

    .line 356
    .line 357
    add-int v8, v6, v2

    .line 358
    .line 359
    if-ge v8, v4, :cond_d

    .line 360
    .line 361
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    if-ge v9, v7, :cond_d

    .line 366
    .line 367
    int-to-byte v7, v9

    .line 368
    aput-byte v7, v1, v8

    .line 369
    .line 370
    add-int/lit8 v6, v6, 0x1

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_d
    if-ne v6, v5, :cond_e

    .line 374
    .line 375
    add-int v0, v2, v5

    .line 376
    .line 377
    goto/16 :goto_9

    .line 378
    .line 379
    :cond_e
    add-int/2addr v2, v6

    .line 380
    :goto_7
    if-ge v6, v5, :cond_18

    .line 381
    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-ge v8, v7, :cond_f

    .line 387
    .line 388
    if-ge v2, v4, :cond_f

    .line 389
    .line 390
    add-int/lit8 v9, v2, 0x1

    .line 391
    .line 392
    int-to-byte v8, v8

    .line 393
    aput-byte v8, v1, v2

    .line 394
    .line 395
    move v2, v9

    .line 396
    goto/16 :goto_8

    .line 397
    .line 398
    :cond_f
    const/16 v9, 0x800

    .line 399
    .line 400
    if-ge v8, v9, :cond_10

    .line 401
    .line 402
    add-int/lit8 v9, v4, -0x2

    .line 403
    .line 404
    if-gt v2, v9, :cond_10

    .line 405
    .line 406
    add-int/lit8 v9, v2, 0x1

    .line 407
    .line 408
    ushr-int/lit8 v10, v8, 0x6

    .line 409
    .line 410
    or-int/lit16 v10, v10, 0x3c0

    .line 411
    .line 412
    int-to-byte v10, v10

    .line 413
    aput-byte v10, v1, v2

    .line 414
    .line 415
    add-int/lit8 v2, v2, 0x2

    .line 416
    .line 417
    and-int/lit8 v8, v8, 0x3f

    .line 418
    .line 419
    or-int/2addr v8, v7

    .line 420
    int-to-byte v8, v8

    .line 421
    aput-byte v8, v1, v9

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_10
    const v9, 0xdfff

    .line 425
    .line 426
    .line 427
    const v10, 0xd800

    .line 428
    .line 429
    .line 430
    if-lt v8, v10, :cond_11

    .line 431
    .line 432
    if-ge v9, v8, :cond_12

    .line 433
    .line 434
    :cond_11
    add-int/lit8 v11, v4, -0x3

    .line 435
    .line 436
    if-gt v2, v11, :cond_12

    .line 437
    .line 438
    add-int/lit8 v9, v2, 0x1

    .line 439
    .line 440
    ushr-int/lit8 v10, v8, 0xc

    .line 441
    .line 442
    or-int/lit16 v10, v10, 0x1e0

    .line 443
    .line 444
    int-to-byte v10, v10

    .line 445
    aput-byte v10, v1, v2

    .line 446
    .line 447
    add-int/lit8 v10, v2, 0x2

    .line 448
    .line 449
    ushr-int/lit8 v11, v8, 0x6

    .line 450
    .line 451
    and-int/lit8 v11, v11, 0x3f

    .line 452
    .line 453
    or-int/2addr v11, v7

    .line 454
    int-to-byte v11, v11

    .line 455
    aput-byte v11, v1, v9

    .line 456
    .line 457
    add-int/lit8 v2, v2, 0x3

    .line 458
    .line 459
    and-int/lit8 v8, v8, 0x3f

    .line 460
    .line 461
    or-int/2addr v8, v7

    .line 462
    int-to-byte v8, v8

    .line 463
    aput-byte v8, v1, v10

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_12
    add-int/lit8 v11, v4, -0x4

    .line 467
    .line 468
    if-gt v2, v11, :cond_15

    .line 469
    .line 470
    add-int/lit8 v9, v6, 0x1

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eq v9, v10, :cond_14

    .line 477
    .line 478
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    invoke-static {v8, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-eqz v10, :cond_13

    .line 487
    .line 488
    invoke-static {v8, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    add-int/lit8 v8, v2, 0x1

    .line 493
    .line 494
    ushr-int/lit8 v10, v6, 0x12

    .line 495
    .line 496
    or-int/lit16 v10, v10, 0xf0

    .line 497
    .line 498
    int-to-byte v10, v10

    .line 499
    aput-byte v10, v1, v2

    .line 500
    .line 501
    add-int/lit8 v10, v2, 0x2

    .line 502
    .line 503
    ushr-int/lit8 v11, v6, 0xc

    .line 504
    .line 505
    and-int/lit8 v11, v11, 0x3f

    .line 506
    .line 507
    or-int/2addr v11, v7

    .line 508
    int-to-byte v11, v11

    .line 509
    aput-byte v11, v1, v8

    .line 510
    .line 511
    add-int/lit8 v8, v2, 0x3

    .line 512
    .line 513
    ushr-int/lit8 v11, v6, 0x6

    .line 514
    .line 515
    and-int/lit8 v11, v11, 0x3f

    .line 516
    .line 517
    or-int/2addr v11, v7

    .line 518
    int-to-byte v11, v11

    .line 519
    aput-byte v11, v1, v10

    .line 520
    .line 521
    add-int/lit8 v2, v2, 0x4

    .line 522
    .line 523
    and-int/lit8 v6, v6, 0x3f

    .line 524
    .line 525
    or-int/2addr v6, v7

    .line 526
    int-to-byte v6, v6

    .line 527
    aput-byte v6, v1, v8

    .line 528
    .line 529
    move v6, v9

    .line 530
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 531
    .line 532
    goto/16 :goto_7

    .line 533
    .line 534
    :cond_13
    move v6, v9

    .line 535
    :cond_14
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 536
    .line 537
    add-int/lit8 v6, v6, -0x1

    .line 538
    .line 539
    invoke-direct {v0, v6, v5}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :cond_15
    if-gt v10, v8, :cond_17

    .line 544
    .line 545
    if-gt v8, v9, :cond_17

    .line 546
    .line 547
    add-int/lit8 v1, v6, 0x1

    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-eq v1, v4, :cond_16

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    invoke-static {v8, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-nez v0, :cond_17

    .line 564
    .line 565
    :cond_16
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 566
    .line 567
    invoke-direct {v0, v6, v5}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 568
    .line 569
    .line 570
    throw v0

    .line 571
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 572
    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v4, "Failed writing "

    .line 576
    .line 577
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v4, " at index "

    .line 584
    .line 585
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v0

    .line 599
    :cond_18
    move v0, v2

    .line 600
    :goto_9
    return v0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(I[BI)I
    .locals 24

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const/16 v3, -0x13

    .line 8
    .line 9
    const/16 v4, -0x60

    .line 10
    .line 11
    const/16 v5, -0x10

    .line 12
    .line 13
    const/16 v6, -0x3e

    .line 14
    .line 15
    const/16 v7, -0x41

    .line 16
    .line 17
    const/16 v8, -0x20

    .line 18
    .line 19
    const/4 v13, 0x2

    .line 20
    move-object/from16 v14, p0

    .line 21
    .line 22
    iget v15, v14, Landroidx/datastore/preferences/protobuf/I0;->a:I

    .line 23
    .line 24
    packed-switch v15, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    or-int v15, v0, v2

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    array-length v9, v1

    .line 32
    sub-int/2addr v9, v2

    .line 33
    or-int/2addr v9, v15

    .line 34
    if-ltz v9, :cond_11

    .line 35
    .line 36
    const/4 v9, -0x1

    .line 37
    const/4 v15, 0x1

    .line 38
    int-to-long v11, v0

    .line 39
    move/from16 v18, v9

    .line 40
    .line 41
    int-to-long v9, v2

    .line 42
    sub-long/2addr v9, v11

    .line 43
    long-to-int v0, v9

    .line 44
    const/16 v2, 0x10

    .line 45
    .line 46
    if-ge v0, v2, :cond_0

    .line 47
    .line 48
    move/from16 v2, v16

    .line 49
    .line 50
    const-wide/16 v19, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    move-wide v9, v11

    .line 54
    move/from16 v2, v16

    .line 55
    .line 56
    const-wide/16 v19, 0x1

    .line 57
    .line 58
    :goto_0
    if-ge v2, v0, :cond_2

    .line 59
    .line 60
    add-long v21, v9, v19

    .line 61
    .line 62
    invoke-static {v9, v10, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-gez v9, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/2addr v2, v15

    .line 70
    move-wide/from16 v9, v21

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v2, v0

    .line 74
    :goto_1
    sub-int/2addr v0, v2

    .line 75
    int-to-long v9, v2

    .line 76
    add-long/2addr v11, v9

    .line 77
    :goto_2
    move/from16 v2, v16

    .line 78
    .line 79
    :goto_3
    if-lez v0, :cond_4

    .line 80
    .line 81
    add-long v9, v11, v19

    .line 82
    .line 83
    invoke-static {v11, v12, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-ltz v2, :cond_3

    .line 88
    .line 89
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    move-wide v11, v9

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move-wide v11, v9

    .line 94
    :cond_4
    if-nez v0, :cond_5

    .line 95
    .line 96
    move/from16 v9, v16

    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_5
    add-int/lit8 v9, v0, -0x1

    .line 101
    .line 102
    if-ge v2, v8, :cond_9

    .line 103
    .line 104
    if-nez v9, :cond_6

    .line 105
    .line 106
    move v9, v2

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_6
    add-int/lit8 v0, v0, -0x2

    .line 110
    .line 111
    if-lt v2, v6, :cond_10

    .line 112
    .line 113
    add-long v9, v11, v19

    .line 114
    .line 115
    invoke-static {v11, v12, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-le v2, v7, :cond_7

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_7
    move-wide v11, v9

    .line 124
    :cond_8
    move/from16 v23, v13

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_9
    const-wide/16 v21, 0x2

    .line 128
    .line 129
    if-ge v2, v5, :cond_d

    .line 130
    .line 131
    if-ge v9, v13, :cond_a

    .line 132
    .line 133
    invoke-static {v11, v12, v1, v2, v9}, Landroidx/datastore/preferences/protobuf/I0;->l(J[BII)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    goto :goto_6

    .line 138
    :cond_a
    add-int/lit8 v0, v0, -0x3

    .line 139
    .line 140
    add-long v9, v11, v19

    .line 141
    .line 142
    invoke-static {v11, v12, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-gt v15, v7, :cond_10

    .line 147
    .line 148
    if-ne v2, v8, :cond_b

    .line 149
    .line 150
    if-lt v15, v4, :cond_10

    .line 151
    .line 152
    :cond_b
    if-ne v2, v3, :cond_c

    .line 153
    .line 154
    if-ge v15, v4, :cond_10

    .line 155
    .line 156
    :cond_c
    add-long v11, v11, v21

    .line 157
    .line 158
    invoke-static {v9, v10, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-le v2, v7, :cond_8

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_d
    const/4 v10, 0x3

    .line 166
    if-ge v9, v10, :cond_e

    .line 167
    .line 168
    invoke-static {v11, v12, v1, v2, v9}, Landroidx/datastore/preferences/protobuf/I0;->l(J[BII)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    goto :goto_6

    .line 173
    :cond_e
    add-int/lit8 v0, v0, -0x4

    .line 174
    .line 175
    add-long v9, v11, v19

    .line 176
    .line 177
    invoke-static {v11, v12, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-gt v15, v7, :cond_10

    .line 182
    .line 183
    shl-int/lit8 v2, v2, 0x1c

    .line 184
    .line 185
    add-int/lit8 v15, v15, 0x70

    .line 186
    .line 187
    add-int/2addr v15, v2

    .line 188
    shr-int/lit8 v2, v15, 0x1e

    .line 189
    .line 190
    if-nez v2, :cond_10

    .line 191
    .line 192
    move/from16 v23, v13

    .line 193
    .line 194
    add-long v13, v11, v21

    .line 195
    .line 196
    invoke-static {v9, v10, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-gt v2, v7, :cond_10

    .line 201
    .line 202
    const-wide/16 v9, 0x3

    .line 203
    .line 204
    add-long/2addr v11, v9

    .line 205
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/H0;->f(J[B)B

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-le v2, v7, :cond_f

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_f
    :goto_4
    move-object/from16 v14, p0

    .line 213
    .line 214
    move/from16 v13, v23

    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :cond_10
    :goto_5
    move/from16 v9, v18

    .line 219
    .line 220
    :goto_6
    return v9

    .line 221
    :cond_11
    move/from16 v23, v13

    .line 222
    .line 223
    const/4 v15, 0x1

    .line 224
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 225
    .line 226
    array-length v1, v1

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    const/4 v10, 0x3

    .line 240
    new-array v4, v10, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object v1, v4, v16

    .line 243
    .line 244
    aput-object v0, v4, v15

    .line 245
    .line 246
    aput-object v2, v4, v23

    .line 247
    .line 248
    const-string v0, "Array length=%d, index=%d, limit=%d"

    .line 249
    .line 250
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v3

    .line 258
    :pswitch_0
    move/from16 v23, v13

    .line 259
    .line 260
    const/4 v15, 0x1

    .line 261
    const/16 v16, 0x0

    .line 262
    .line 263
    const/16 v18, -0x1

    .line 264
    .line 265
    :goto_7
    if-ge v0, v2, :cond_12

    .line 266
    .line 267
    aget-byte v9, v1, v0

    .line 268
    .line 269
    if-ltz v9, :cond_12

    .line 270
    .line 271
    add-int/2addr v0, v15

    .line 272
    goto :goto_7

    .line 273
    :cond_12
    if-lt v0, v2, :cond_13

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_13
    :goto_8
    if-lt v0, v2, :cond_14

    .line 277
    .line 278
    :goto_9
    move/from16 v9, v16

    .line 279
    .line 280
    goto/16 :goto_b

    .line 281
    .line 282
    :cond_14
    add-int/lit8 v9, v0, 0x1

    .line 283
    .line 284
    aget-byte v10, v1, v0

    .line 285
    .line 286
    if-gez v10, :cond_1e

    .line 287
    .line 288
    if-ge v10, v8, :cond_17

    .line 289
    .line 290
    if-lt v9, v2, :cond_15

    .line 291
    .line 292
    move v9, v10

    .line 293
    goto :goto_b

    .line 294
    :cond_15
    if-lt v10, v6, :cond_1d

    .line 295
    .line 296
    add-int/lit8 v0, v0, 0x2

    .line 297
    .line 298
    aget-byte v9, v1, v9

    .line 299
    .line 300
    if-le v9, v7, :cond_16

    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_16
    const/16 v17, 0x3

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_17
    if-ge v10, v5, :cond_1b

    .line 307
    .line 308
    add-int/lit8 v11, v2, -0x1

    .line 309
    .line 310
    if-lt v9, v11, :cond_18

    .line 311
    .line 312
    invoke-static {v9, v1, v2}, Landroidx/datastore/preferences/protobuf/J0;->a(I[BI)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    goto :goto_b

    .line 317
    :cond_18
    add-int/lit8 v13, v0, 0x2

    .line 318
    .line 319
    aget-byte v9, v1, v9

    .line 320
    .line 321
    if-gt v9, v7, :cond_1d

    .line 322
    .line 323
    if-ne v10, v8, :cond_19

    .line 324
    .line 325
    if-lt v9, v4, :cond_1d

    .line 326
    .line 327
    :cond_19
    if-ne v10, v3, :cond_1a

    .line 328
    .line 329
    if-ge v9, v4, :cond_1d

    .line 330
    .line 331
    :cond_1a
    const/16 v17, 0x3

    .line 332
    .line 333
    add-int/lit8 v0, v0, 0x3

    .line 334
    .line 335
    aget-byte v9, v1, v13

    .line 336
    .line 337
    if-le v9, v7, :cond_16

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_1b
    add-int/lit8 v11, v2, -0x2

    .line 341
    .line 342
    if-lt v9, v11, :cond_1c

    .line 343
    .line 344
    invoke-static {v9, v1, v2}, Landroidx/datastore/preferences/protobuf/J0;->a(I[BI)I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    goto :goto_b

    .line 349
    :cond_1c
    add-int/lit8 v13, v0, 0x2

    .line 350
    .line 351
    aget-byte v9, v1, v9

    .line 352
    .line 353
    if-gt v9, v7, :cond_1d

    .line 354
    .line 355
    shl-int/lit8 v10, v10, 0x1c

    .line 356
    .line 357
    add-int/lit8 v9, v9, 0x70

    .line 358
    .line 359
    add-int/2addr v9, v10

    .line 360
    shr-int/lit8 v9, v9, 0x1e

    .line 361
    .line 362
    if-nez v9, :cond_1d

    .line 363
    .line 364
    const/16 v17, 0x3

    .line 365
    .line 366
    add-int/lit8 v10, v0, 0x3

    .line 367
    .line 368
    aget-byte v9, v1, v13

    .line 369
    .line 370
    if-gt v9, v7, :cond_1d

    .line 371
    .line 372
    add-int/lit8 v0, v0, 0x4

    .line 373
    .line 374
    aget-byte v9, v1, v10

    .line 375
    .line 376
    if-le v9, v7, :cond_13

    .line 377
    .line 378
    :cond_1d
    :goto_a
    move/from16 v9, v18

    .line 379
    .line 380
    :goto_b
    return v9

    .line 381
    :cond_1e
    const/16 v17, 0x3

    .line 382
    .line 383
    move v0, v9

    .line 384
    goto :goto_8

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

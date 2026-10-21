.class public abstract LP0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroidx/media3/common/util/ParsableByteArray;)LJ0/e;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/16 p0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x10

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, LJ0/e;

    .line 26
    .line 27
    const-string v0, "und"

    .line 28
    .line 29
    invoke-direct {p1, v0, p0, p0}, LJ0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Failed to parse comment attribute: "

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "MetadataUtil"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;)LJ0/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const-string v3, "MetadataUtil"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v1, v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, LP0/n;->parseFullBoxFlags(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const-string v2, "image/jpeg"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v2, 0xe

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-string v2, "image/png"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v4

    .line 40
    :goto_0
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string p0, "Unrecognized cover art flags: "

    .line 43
    .line 44
    invoke-static {v1, p0, v3}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v4

    .line 48
    :cond_2
    const/4 v1, 0x4

    .line 49
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x10

    .line 53
    .line 54
    new-array v1, v0, [B

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, v1, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 58
    .line 59
    .line 60
    new-instance p0, LJ0/a;

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    invoke-direct {p0, v2, v4, v0, v1}, LJ0/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    .line 68
    .line 69
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v4
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    invoke-static {v0, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-lez p0, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "/"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_0
    new-instance p0, LJ0/p;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p2, v3, p1}, LJ0/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p2, "Failed to parse index/count attribute: "

    .line 75
    .line 76
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "MetadataUtil"

    .line 91
    .line 92
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v3
.end method

.method public static d(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_4

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x10

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/lit16 v0, v0, 0x80

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    .line 63
    .line 64
    const-string v0, "Failed to parse data atom to int"

    .line 65
    .line 66
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, -0x1

    .line 70
    return p0
.end method

.method public static e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;
    .locals 0

    .line 1
    invoke-static {p2}, LP0/w;->d(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    if-ltz p2, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    new-instance p0, LJ0/p;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p0, p1, p4, p2}, LJ0/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p0, LJ0/e;

    .line 32
    .line 33
    const-string p3, "und"

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p0, p3, p1, p2}, LJ0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "Failed to parse uint8 attribute: "

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "MetadataUtil"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object p4
.end method

.method public static f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x10

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, LJ0/p;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p1, p2, v3, p0}, LJ0/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p2, "Failed to parse text attribute: "

    .line 39
    .line 40
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "MetadataUtil"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v3
.end method

.method public static parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;
    .locals 11

    .line 1
    const-string v0, "Skipped unknown metadata entry: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v1

    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    shr-int/lit8 v3, v1, 0x18

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    const/16 v4, 0xa9

    .line 21
    .line 22
    const-string v5, "MetadataUtil"

    .line 23
    .line 24
    const-string v6, "TCON"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x1

    .line 29
    if-eq v3, v4, :cond_18

    .line 30
    .line 31
    const/16 v4, 0xfd

    .line 32
    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    const v3, 0x676e7265

    .line 38
    .line 39
    .line 40
    if-ne v1, v3, :cond_2

    .line 41
    .line 42
    :try_start_0
    invoke-static {p0}, LP0/w;->d(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v9

    .line 47
    invoke-static {v0}, LJ0/l;->resolveV1Genre(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v1, LJ0/p;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v1, v6, v7, v0}, LJ0/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    move-object v7, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "Failed to parse standard genre code"

    .line 65
    .line 66
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 70
    .line 71
    .line 72
    return-object v7

    .line 73
    :cond_2
    const v3, 0x6469736b

    .line 74
    .line 75
    .line 76
    if-ne v1, v3, :cond_3

    .line 77
    .line 78
    :try_start_1
    const-string v0, "TPOS"

    .line 79
    .line 80
    invoke-static {p0, v1, v0}, LP0/w;->c(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_3
    const v3, 0x74726b6e

    .line 92
    .line 93
    .line 94
    if-ne v1, v3, :cond_4

    .line 95
    .line 96
    :try_start_2
    const-string v0, "TRCK"

    .line 97
    .line 98
    invoke-static {p0, v1, v0}, LP0/w;->c(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_4
    const v3, 0x746d706f

    .line 107
    .line 108
    .line 109
    if-ne v1, v3, :cond_5

    .line 110
    .line 111
    :try_start_3
    const-string v0, "TBPM"

    .line 112
    .line 113
    invoke-static {v1, v0, p0, v9, v8}, LP0/w;->e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_5
    const v3, 0x6370696c

    .line 122
    .line 123
    .line 124
    if-ne v1, v3, :cond_6

    .line 125
    .line 126
    :try_start_4
    const-string v0, "TCMP"

    .line 127
    .line 128
    invoke-static {v1, v0, p0, v9, v9}, LP0/w;->e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_6
    const v3, 0x636f7672

    .line 137
    .line 138
    .line 139
    if-ne v1, v3, :cond_7

    .line 140
    .line 141
    :try_start_5
    invoke-static {p0}, LP0/w;->b(Landroidx/media3/common/util/ParsableByteArray;)LJ0/a;

    .line 142
    .line 143
    .line 144
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_7
    const v3, 0x61415254

    .line 150
    .line 151
    .line 152
    if-ne v1, v3, :cond_8

    .line 153
    .line 154
    :try_start_6
    const-string v0, "TPE2"

    .line 155
    .line 156
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_8
    const v3, 0x736f6e6d

    .line 165
    .line 166
    .line 167
    if-ne v1, v3, :cond_9

    .line 168
    .line 169
    :try_start_7
    const-string v0, "TSOT"

    .line 170
    .line 171
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 172
    .line 173
    .line 174
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_9
    const v3, 0x736f616c

    .line 180
    .line 181
    .line 182
    if-ne v1, v3, :cond_a

    .line 183
    .line 184
    :try_start_8
    const-string v0, "TSOA"

    .line 185
    .line 186
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_a
    const v3, 0x736f6172

    .line 195
    .line 196
    .line 197
    if-ne v1, v3, :cond_b

    .line 198
    .line 199
    :try_start_9
    const-string v0, "TSOP"

    .line 200
    .line 201
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 202
    .line 203
    .line 204
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 205
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_b
    const v3, 0x736f6161

    .line 210
    .line 211
    .line 212
    if-ne v1, v3, :cond_c

    .line 213
    .line 214
    :try_start_a
    const-string v0, "TSO2"

    .line 215
    .line 216
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 217
    .line 218
    .line 219
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 220
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 221
    .line 222
    .line 223
    return-object v0

    .line 224
    :cond_c
    const v3, 0x736f636f

    .line 225
    .line 226
    .line 227
    if-ne v1, v3, :cond_d

    .line 228
    .line 229
    :try_start_b
    const-string v0, "TSOC"

    .line 230
    .line 231
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 232
    .line 233
    .line 234
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 235
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 236
    .line 237
    .line 238
    return-object v0

    .line 239
    :cond_d
    const v3, 0x72746e67

    .line 240
    .line 241
    .line 242
    if-ne v1, v3, :cond_e

    .line 243
    .line 244
    :try_start_c
    const-string v0, "ITUNESADVISORY"

    .line 245
    .line 246
    invoke-static {v1, v0, p0, v8, v8}, LP0/w;->e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;

    .line 247
    .line 248
    .line 249
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 250
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_e
    const v3, 0x70676170

    .line 255
    .line 256
    .line 257
    if-ne v1, v3, :cond_f

    .line 258
    .line 259
    :try_start_d
    const-string v0, "ITUNESGAPLESS"

    .line 260
    .line 261
    invoke-static {v1, v0, p0, v8, v9}, LP0/w;->e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;

    .line 262
    .line 263
    .line 264
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 265
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 266
    .line 267
    .line 268
    return-object v0

    .line 269
    :cond_f
    const v3, 0x736f736e

    .line 270
    .line 271
    .line 272
    if-ne v1, v3, :cond_10

    .line 273
    .line 274
    :try_start_e
    const-string v0, "TVSHOWSORT"

    .line 275
    .line 276
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 277
    .line 278
    .line 279
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 280
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 281
    .line 282
    .line 283
    return-object v0

    .line 284
    :cond_10
    const v3, 0x74767368

    .line 285
    .line 286
    .line 287
    if-ne v1, v3, :cond_11

    .line 288
    .line 289
    :try_start_f
    const-string v0, "TVSHOW"

    .line 290
    .line 291
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 292
    .line 293
    .line 294
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 295
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_11
    const v3, 0x2d2d2d2d

    .line 300
    .line 301
    .line 302
    if-ne v1, v3, :cond_24

    .line 303
    .line 304
    const/4 v0, -0x1

    .line 305
    move v4, v0

    .line 306
    move v5, v4

    .line 307
    move-object v1, v7

    .line 308
    move-object v3, v1

    .line 309
    :goto_1
    :try_start_10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-ge v6, v2, :cond_15

    .line 314
    .line 315
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    const/4 v10, 0x4

    .line 328
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 329
    .line 330
    .line 331
    const v10, 0x6d65616e

    .line 332
    .line 333
    .line 334
    if-ne v9, v10, :cond_12

    .line 335
    .line 336
    add-int/lit8 v8, v8, -0xc

    .line 337
    .line 338
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    goto :goto_1

    .line 343
    :cond_12
    const v10, 0x6e616d65

    .line 344
    .line 345
    .line 346
    if-ne v9, v10, :cond_13

    .line 347
    .line 348
    add-int/lit8 v8, v8, -0xc

    .line 349
    .line 350
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    goto :goto_1

    .line 355
    :cond_13
    const v10, 0x64617461

    .line 356
    .line 357
    .line 358
    if-ne v9, v10, :cond_14

    .line 359
    .line 360
    move v4, v6

    .line 361
    move v5, v8

    .line 362
    :cond_14
    add-int/lit8 v8, v8, -0xc

    .line 363
    .line 364
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 365
    .line 366
    .line 367
    goto :goto_1

    .line 368
    :cond_15
    if-eqz v1, :cond_17

    .line 369
    .line 370
    if-eqz v3, :cond_17

    .line 371
    .line 372
    if-ne v4, v0, :cond_16

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_16
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 376
    .line 377
    .line 378
    const/16 v0, 0x10

    .line 379
    .line 380
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 381
    .line 382
    .line 383
    sub-int/2addr v5, v0

    .line 384
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    new-instance v7, LJ0/m;

    .line 389
    .line 390
    invoke-direct {v7, v1, v3, v0}, LJ0/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 391
    .line 392
    .line 393
    :cond_17
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 394
    .line 395
    .line 396
    return-object v7

    .line 397
    :cond_18
    :goto_3
    const v3, 0xffffff

    .line 398
    .line 399
    .line 400
    and-int/2addr v3, v1

    .line 401
    const v4, 0x636d74

    .line 402
    .line 403
    .line 404
    if-ne v3, v4, :cond_19

    .line 405
    .line 406
    :try_start_11
    invoke-static {v1, p0}, LP0/w;->a(ILandroidx/media3/common/util/ParsableByteArray;)LJ0/e;

    .line 407
    .line 408
    .line 409
    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 410
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 411
    .line 412
    .line 413
    return-object v0

    .line 414
    :cond_19
    const v4, 0x6e616d

    .line 415
    .line 416
    .line 417
    if-eq v3, v4, :cond_26

    .line 418
    .line 419
    const v4, 0x74726b

    .line 420
    .line 421
    .line 422
    if-ne v3, v4, :cond_1a

    .line 423
    .line 424
    goto/16 :goto_5

    .line 425
    .line 426
    :cond_1a
    const v4, 0x636f6d

    .line 427
    .line 428
    .line 429
    if-eq v3, v4, :cond_25

    .line 430
    .line 431
    const v4, 0x777274

    .line 432
    .line 433
    .line 434
    if-ne v3, v4, :cond_1b

    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :cond_1b
    const v4, 0x646179

    .line 439
    .line 440
    .line 441
    if-ne v3, v4, :cond_1c

    .line 442
    .line 443
    :try_start_12
    const-string v0, "TDRC"

    .line 444
    .line 445
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 446
    .line 447
    .line 448
    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 449
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 450
    .line 451
    .line 452
    return-object v0

    .line 453
    :cond_1c
    const v4, 0x415254

    .line 454
    .line 455
    .line 456
    if-ne v3, v4, :cond_1d

    .line 457
    .line 458
    :try_start_13
    const-string v0, "TPE1"

    .line 459
    .line 460
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 461
    .line 462
    .line 463
    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 464
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 465
    .line 466
    .line 467
    return-object v0

    .line 468
    :cond_1d
    const v4, 0x746f6f

    .line 469
    .line 470
    .line 471
    if-ne v3, v4, :cond_1e

    .line 472
    .line 473
    :try_start_14
    const-string v0, "TSSE"

    .line 474
    .line 475
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 476
    .line 477
    .line 478
    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 479
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 480
    .line 481
    .line 482
    return-object v0

    .line 483
    :cond_1e
    const v4, 0x616c62

    .line 484
    .line 485
    .line 486
    if-ne v3, v4, :cond_1f

    .line 487
    .line 488
    :try_start_15
    const-string v0, "TALB"

    .line 489
    .line 490
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 491
    .line 492
    .line 493
    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 494
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 495
    .line 496
    .line 497
    return-object v0

    .line 498
    :cond_1f
    const v4, 0x6c7972

    .line 499
    .line 500
    .line 501
    if-ne v3, v4, :cond_20

    .line 502
    .line 503
    :try_start_16
    const-string v0, "USLT"

    .line 504
    .line 505
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 506
    .line 507
    .line 508
    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 509
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 510
    .line 511
    .line 512
    return-object v0

    .line 513
    :cond_20
    const v4, 0x67656e

    .line 514
    .line 515
    .line 516
    if-ne v3, v4, :cond_21

    .line 517
    .line 518
    :try_start_17
    invoke-static {p0, v1, v6}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 519
    .line 520
    .line 521
    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 522
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 523
    .line 524
    .line 525
    return-object v0

    .line 526
    :cond_21
    const v4, 0x677270

    .line 527
    .line 528
    .line 529
    if-ne v3, v4, :cond_22

    .line 530
    .line 531
    :try_start_18
    const-string v0, "TIT1"

    .line 532
    .line 533
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 534
    .line 535
    .line 536
    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 537
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 538
    .line 539
    .line 540
    return-object v0

    .line 541
    :cond_22
    const v4, 0x6d766e

    .line 542
    .line 543
    .line 544
    if-ne v3, v4, :cond_23

    .line 545
    .line 546
    :try_start_19
    const-string v0, "MVNM"

    .line 547
    .line 548
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 549
    .line 550
    .line 551
    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 552
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 553
    .line 554
    .line 555
    return-object v0

    .line 556
    :cond_23
    const v4, 0x6d7669

    .line 557
    .line 558
    .line 559
    if-ne v3, v4, :cond_24

    .line 560
    .line 561
    :try_start_1a
    const-string v0, "MVIN"

    .line 562
    .line 563
    invoke-static {v1, v0, p0, v9, v8}, LP0/w;->e(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)LJ0/k;

    .line 564
    .line 565
    .line 566
    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 567
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 568
    .line 569
    .line 570
    return-object v0

    .line 571
    :cond_24
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v1}, Ls0/f;->getBoxTypeString(I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 588
    .line 589
    .line 590
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 591
    .line 592
    .line 593
    return-object v7

    .line 594
    :cond_25
    :goto_4
    :try_start_1c
    const-string v0, "TCOM"

    .line 595
    .line 596
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 597
    .line 598
    .line 599
    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 600
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 601
    .line 602
    .line 603
    return-object v0

    .line 604
    :cond_26
    :goto_5
    :try_start_1d
    const-string v0, "TIT2"

    .line 605
    .line 606
    invoke-static {p0, v1, v0}, LP0/w;->f(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)LJ0/p;

    .line 607
    .line 608
    .line 609
    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 610
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 611
    .line 612
    .line 613
    return-object v0

    .line 614
    :goto_6
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 615
    .line 616
    .line 617
    throw v0
.end method

.method public static parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Ls0/b;
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge v0, p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const v3, 0x64617461

    .line 16
    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v1, v1, -0x10

    .line 29
    .line 30
    new-array v2, v1, [B

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Ls0/b;

    .line 37
    .line 38
    invoke-direct {p0, p2, v2, v0, p1}, Ls0/b;-><init>(Ljava/lang/String;[BII)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    add-int/2addr v0, v1

    .line 43
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static setFormatGaplessInfo(ILv0/U;Landroidx/media3/common/Format$Builder;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lv0/U;->hasGaplessInfo()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget p0, p1, Lv0/U;->a:I

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p1, p1, Lv0/U;->b:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static varargs setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Landroidx/media3/common/Metadata;

    .line 7
    .line 8
    new-array v2, v1, [Landroidx/media3/common/Metadata$Entry;

    .line 9
    .line 10
    invoke-direct {p3, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    if-eqz p1, :cond_3

    .line 14
    .line 15
    const-class v2, Ls0/b;

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroidx/media3/common/Metadata;->getEntriesOfType(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()LQ3/x0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ls0/b;

    .line 36
    .line 37
    iget-object v3, v2, Ls0/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "com.android.capture.fps"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    if-ne p0, v3, :cond_1

    .line 49
    .line 50
    :cond_2
    new-array v3, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 51
    .line 52
    aput-object v2, v3, v1

    .line 53
    .line 54
    invoke-virtual {p3, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    array-length p0, p4

    .line 60
    :goto_2
    if-ge v1, p0, :cond_4

    .line 61
    .line 62
    aget-object p1, p4, v1

    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    add-int/2addr v1, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {p3}, Landroidx/media3/common/Metadata;->length()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-lez p0, :cond_5

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 77
    .line 78
    .line 79
    :cond_5
    return-void
.end method

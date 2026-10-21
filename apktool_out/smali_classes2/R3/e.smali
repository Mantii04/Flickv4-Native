.class public abstract LR3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LR3/c;

    .line 2
    .line 3
    const-string v1, "base64()"

    .line 4
    .line 5
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, LR3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, LR3/c;

    .line 11
    .line 12
    const-string v1, "base64Url()"

    .line 13
    .line 14
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, LR3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, LR3/d;

    .line 20
    .line 21
    const-string v1, "base32()"

    .line 22
    .line 23
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, LR3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, LR3/d;

    .line 29
    .line 30
    const-string v1, "base32Hex()"

    .line 31
    .line 32
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, LR3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, LR3/b;

    .line 38
    .line 39
    new-instance v1, LR3/a;

    .line 40
    .line 41
    const-string v2, "0123456789ABCDEF"

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "base16()"

    .line 48
    .line 49
    invoke-direct {v1, v3, v2}, LR3/a;-><init>(Ljava/lang/String;[C)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, LR3/b;-><init>(LR3/a;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, LR3/e;->a:LR3/b;

    .line 56
    .line 57
    return-void
.end method

.method public static base16()LR3/e;
    .locals 1

    .line 1
    sget-object v0, LR3/e;->a:LR3/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract a([BLjava/lang/CharSequence;)I
.end method

.method public abstract b(Ljava/lang/StringBuilder;[BII)V
.end method

.method public abstract c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, LR3/e;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, LR3/d;

    .line 11
    .line 12
    iget-object v1, v1, LR3/d;->b:LR3/a;

    .line 13
    .line 14
    iget v1, v1, LR3/a;->d:I

    .line 15
    .line 16
    int-to-long v1, v1

    .line 17
    int-to-long v3, v0

    .line 18
    mul-long/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x7

    .line 20
    .line 21
    add-long/2addr v1, v3

    .line 22
    const-wide/16 v3, 0x8

    .line 23
    .line 24
    div-long/2addr v1, v3

    .line 25
    long-to-int v0, v1

    .line 26
    new-array v1, v0, [B

    .line 27
    .line 28
    invoke-virtual {p0, v1, p1}, LR3/e;->a([BLjava/lang/CharSequence;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    new-array v0, p1, [B

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LR3/e;->encode([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 4

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, LP3/v;->checkPositionIndexes(III)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, LR3/d;

    .line 4
    iget-object v1, v1, LR3/d;->b:LR3/a;

    iget v2, v1, LR3/a;->e:I

    iget v1, v1, LR3/a;->f:I

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p3, v1, v3}, LS3/e;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v1, v2

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, LR3/e;->b(Ljava/lang/StringBuilder;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public abstract ignoreCase()LR3/e;
.end method

.method public abstract lowerCase()LR3/e;
.end method

.class public final Lc4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:J

.field public d:J

.field public e:C

.field public final f:Ljava/io/Reader;

.field public g:Z

.field public h:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lc4/f;->f:Ljava/io/Reader;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc4/f;->b:Z

    iput-boolean p1, p0, Lc4/f;->g:Z

    iput-char p1, p0, Lc4/f;->e:C

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc4/f;->c:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lc4/f;->a:J

    iput-wide v0, p0, Lc4/f;->h:J

    iput-wide v2, p0, Lc4/f;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc4/f;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;
    .locals 2

    new-instance v0, Lcom/imsdk/a/a/a/b;

    .line 1
    invoke-static {p1}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lc4/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/imsdk/a/a/a/b;
    .locals 2

    new-instance v0, Lcom/imsdk/a/a/a/b;

    .line 6
    invoke-static {p1}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lc4/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(C)Ljava/lang/String;
    .locals 6

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lc4/f;->c()C

    move-result v1

    if-eqz v1, :cond_8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v3, 0xd

    if-eq v1, v3, :cond_8

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc4/f;->c()C

    move-result v1

    const/16 v5, 0x22

    if-eq v1, v5, :cond_0

    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    const/16 v4, 0x62

    if-eq v1, v4, :cond_7

    const/16 v4, 0x66

    if-eq v1, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_5

    const/16 v2, 0x72

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_3

    const/16 v2, 0x75

    const-string v3, "Illegal escape."

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lc4/f;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, v3, p1}, Lc4/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0, v3}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_3
    const/16 v1, 0x9

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/16 v1, 0xc

    goto :goto_1

    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    :cond_8
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 12
    const-string p1, ""

    return-object p1

    :cond_0
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0}, Lc4/f;->c()C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p0}, Lc4/f;->b()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Substring bounds error"

    invoke-virtual {p0, p1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public a()V
    .locals 6

    iget-boolean v0, p0, Lc4/f;->g:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lc4/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 13
    iput-wide v0, p0, Lc4/f;->c:J

    iget-char v0, p0, Lc4/f;->e:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lc4/f;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    sub-long/2addr v0, v4

    :goto_0
    iput-wide v0, p0, Lc4/f;->a:J

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v0, p0, Lc4/f;->d:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lc4/f;->d:J

    iget-wide v0, p0, Lc4/f;->h:J

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lc4/f;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc4/f;->b:Z

    return-void

    :cond_3
    new-instance v0, Lcom/imsdk/a/a/a/b;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(C)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    const-string v1, ",:]}/\\\"[{;=#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc4/f;->c()C

    move-result p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lc4/f;->b:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc4/f;->a()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lc4/b;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Missing value"

    invoke-virtual {p0, p1}, Lc4/f;->a(Ljava/lang/String;)Lcom/imsdk/a/a/a/b;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0, p1}, Lc4/f;->a(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lc4/f;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc4/f;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()C
    .locals 7

    .line 1
    iget-boolean v0, p0, Lc4/f;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lc4/f;->g:Z

    .line 7
    .line 8
    iget-char v0, p0, Lc4/f;->e:C

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc4/f;->f:Ljava/io/Reader;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    if-gtz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lc4/f;->b:Z

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    if-lez v0, :cond_5

    .line 24
    .line 25
    iget-wide v1, p0, Lc4/f;->c:J

    .line 26
    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    add-long/2addr v1, v3

    .line 30
    iput-wide v1, p0, Lc4/f;->c:J

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    const/16 v5, 0xd

    .line 35
    .line 36
    if-ne v0, v5, :cond_3

    .line 37
    .line 38
    :goto_1
    iget-wide v5, p0, Lc4/f;->d:J

    .line 39
    .line 40
    add-long/2addr v5, v3

    .line 41
    iput-wide v5, p0, Lc4/f;->d:J

    .line 42
    .line 43
    iget-wide v3, p0, Lc4/f;->a:J

    .line 44
    .line 45
    iput-wide v3, p0, Lc4/f;->h:J

    .line 46
    .line 47
    :cond_2
    :goto_2
    iput-wide v1, p0, Lc4/f;->a:J

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/16 v6, 0xa

    .line 51
    .line 52
    if-ne v0, v6, :cond_4

    .line 53
    .line 54
    iget-char v6, p0, Lc4/f;->e:C

    .line 55
    .line 56
    if-eq v6, v5, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    iget-wide v1, p0, Lc4/f;->a:J

    .line 60
    .line 61
    add-long/2addr v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    :goto_3
    int-to-char v0, v0

    .line 64
    iput-char v0, p0, Lc4/f;->e:C

    .line 65
    .line 66
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/imsdk/a/a/a/b;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public d()C
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc4/f;->c()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    :cond_1
    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/f;->d()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    const-string v2, "JSON Array or Object depth too large to process."

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x7b

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lc4/f;->b(C)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lc4/f;->a()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v0, Lc4/b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lc4/b;-><init>(Lc4/f;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Lcom/imsdk/a/a/a/b;

    .line 31
    .line 32
    invoke-direct {v1, v2, v0}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lc4/f;->a()V

    .line 37
    .line 38
    .line 39
    :try_start_1
    new-instance v0, Lc4/a;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lc4/a;-><init>(Lc4/f;)V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    new-instance v1, Lcom/imsdk/a/a/a/b;

    .line 47
    .line 48
    invoke-direct {v1, v2, v0}, Lcom/imsdk/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " at "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lc4/f;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " [character "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lc4/f;->a:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " line "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lc4/f;->d:J

    .line 29
    .line 30
    const-string v3, "]"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, LA/i;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.class public abstract LT4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static readableFileSize(J)Ljava/lang/String;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    mul-long/2addr p0, v2

    .line 10
    :cond_0
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gtz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string p0, "0"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string v0, "B"

    .line 18
    .line 19
    const-string v1, "kB"

    .line 20
    .line 21
    const-string v2, "MB"

    .line 22
    .line 23
    const-string v3, "GB"

    .line 24
    .line 25
    const-string v4, "TB"

    .line 26
    .line 27
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    long-to-double p0, p0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    div-double/2addr v1, v5

    .line 43
    double-to-int v1, v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v5, Ljava/text/DecimalFormat;

    .line 50
    .line 51
    const-string v6, "#,##0.#"

    .line 52
    .line 53
    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    int-to-double v6, v1

    .line 57
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    div-double/2addr p0, v3

    .line 62
    invoke-virtual {v5, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    aget-object p0, v0, v1

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object p0

    .line 79
    :catch_0
    const-string p0, "N/A"

    .line 80
    .line 81
    return-object p0
.end method

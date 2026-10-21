.class public abstract Ll6/U;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static filter(Ll6/T;Lj6/p;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p1

    .line 3
    move v2, v0

    .line 4
    :goto_0
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->b:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 5
    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    move-object v4, p0

    .line 9
    check-cast v4, Ll6/b;

    .line 10
    .line 11
    invoke-virtual {v4, v1, v2}, Ll6/b;->head(Lj6/p;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    sget-object v6, Lorg/jsoup/select/NodeFilter$FilterResult;->j:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 16
    .line 17
    if-ne v5, v6, :cond_0

    .line 18
    .line 19
    return-object v5

    .line 20
    :cond_0
    if-ne v5, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lj6/p;->childNodeSize()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-lez v7, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lj6/p;->childNode(I)Lj6/p;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lj6/p;->nextSibling()Lj6/p;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    sget-object v8, Lorg/jsoup/select/NodeFilter$FilterResult;->f:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 40
    .line 41
    sget-object v9, Lorg/jsoup/select/NodeFilter$FilterResult;->e:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 42
    .line 43
    if-nez v7, :cond_5

    .line 44
    .line 45
    if-lez v2, :cond_5

    .line 46
    .line 47
    if-eq v5, v3, :cond_2

    .line 48
    .line 49
    if-ne v5, v9, :cond_3

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v4, v1, v2}, Ll6/b;->tail(Lj6/p;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-ne v5, v6, :cond_3

    .line 56
    .line 57
    return-object v5

    .line 58
    :cond_3
    invoke-virtual {v1}, Lj6/p;->parentNode()Lj6/p;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    if-ne v5, v8, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Lj6/p;->remove()V

    .line 67
    .line 68
    .line 69
    :cond_4
    move-object v5, v3

    .line 70
    move-object v1, v7

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    if-eq v5, v3, :cond_6

    .line 73
    .line 74
    if-ne v5, v9, :cond_7

    .line 75
    .line 76
    :cond_6
    invoke-virtual {v4, v1, v2}, Ll6/b;->tail(Lj6/p;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-ne v5, v6, :cond_7

    .line 81
    .line 82
    return-object v5

    .line 83
    :cond_7
    if-ne v1, p1, :cond_8

    .line 84
    .line 85
    return-object v5

    .line 86
    :cond_8
    invoke-virtual {v1}, Lj6/p;->nextSibling()Lj6/p;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-ne v5, v8, :cond_9

    .line 91
    .line 92
    invoke-virtual {v1}, Lj6/p;->remove()V

    .line 93
    .line 94
    .line 95
    :cond_9
    move-object v1, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_a
    return-object v3
.end method

.method public static traverse(Ll6/V;Lj6/p;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p1

    .line 3
    move v2, v0

    .line 4
    :goto_0
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-interface {p0, v1, v2}, Ll6/V;->head(Lj6/p;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lj6/p;->childNodeSize()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lj6/p;->childNode(I)Lj6/p;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lj6/p;->nextSibling()Lj6/p;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    invoke-interface {p0, v1, v2}, Ll6/V;->tail(Lj6/p;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lj6/p;->parentNode()Lj6/p;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p0, v1, v2}, Ll6/V;->tail(Lj6/p;I)V

    .line 41
    .line 42
    .line 43
    if-ne v1, p1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v1}, Lj6/p;->nextSibling()Lj6/p;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_2
    return-void
.end method

.class public final LP5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LI5/a;


# instance fields
.field public b:I

.field public e:I

.field public f:I

.field public j:LM5/e;

.field public m:I

.field public final synthetic n:LP5/e;


# direct methods
.method public constructor <init>(LP5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP5/d;->n:LP5/e;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, LP5/d;->b:I

    .line 8
    .line 9
    invoke-static {p1}, LP5/e;->access$getStartIndex$p(LP5/e;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1}, LP5/e;->access$getInput$p(LP5/e;)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1, p1}, LM5/g;->coerceIn(III)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, LP5/d;->e:I

    .line 27
    .line 28
    iput p1, p0, LP5/d;->f:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, LP5/d;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, LP5/d;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LP5/d;->j:LM5/e;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, LP5/d;->n:LP5/e;

    .line 13
    .line 14
    invoke-static {v0}, LP5/e;->access$getLimit$p(LP5/e;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, 0x1

    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    iget v2, p0, LP5/d;->m:I

    .line 23
    .line 24
    add-int/2addr v2, v4

    .line 25
    iput v2, p0, LP5/d;->m:I

    .line 26
    .line 27
    invoke-static {v0}, LP5/e;->access$getLimit$p(LP5/e;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ge v2, v5, :cond_2

    .line 32
    .line 33
    :cond_1
    iget v2, p0, LP5/d;->f:I

    .line 34
    .line 35
    invoke-static {v0}, LP5/e;->access$getInput$p(LP5/e;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-le v2, v5, :cond_3

    .line 44
    .line 45
    :cond_2
    new-instance v1, LM5/e;

    .line 46
    .line 47
    iget v2, p0, LP5/d;->e:I

    .line 48
    .line 49
    invoke-static {v0}, LP5/e;->access$getInput$p(LP5/e;)Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-direct {v1, v2, v0}, LM5/e;-><init>(II)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, LP5/d;->j:LM5/e;

    .line 61
    .line 62
    iput v3, p0, LP5/d;->f:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static {v0}, LP5/e;->access$getGetNextMatch$p(LP5/e;)LH5/p;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0}, LP5/e;->access$getInput$p(LP5/e;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget v6, p0, LP5/d;->f:I

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v2, v5, v6}, LH5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lkotlin/Pair;

    .line 84
    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    new-instance v1, LM5/e;

    .line 88
    .line 89
    iget v2, p0, LP5/d;->e:I

    .line 90
    .line 91
    invoke-static {v0}, LP5/e;->access$getInput$p(LP5/e;)Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-direct {v1, v2, v0}, LM5/e;-><init>(II)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, LP5/d;->j:LM5/e;

    .line 103
    .line 104
    iput v3, p0, LP5/d;->f:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iget v3, p0, LP5/d;->e:I

    .line 128
    .line 129
    invoke-static {v3, v0}, LM5/g;->until(II)LM5/e;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iput-object v3, p0, LP5/d;->j:LM5/e;

    .line 134
    .line 135
    add-int/2addr v0, v2

    .line 136
    iput v0, p0, LP5/d;->e:I

    .line 137
    .line 138
    if-nez v2, :cond_5

    .line 139
    .line 140
    move v1, v4

    .line 141
    :cond_5
    add-int/2addr v0, v1

    .line 142
    iput v0, p0, LP5/d;->f:I

    .line 143
    .line 144
    :goto_0
    iput v4, p0, LP5/d;->b:I

    .line 145
    .line 146
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, LP5/d;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, LP5/d;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, LP5/d;->b:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public next()LM5/e;
    .locals 3

    .line 2
    iget v0, p0, LP5/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, LP5/d;->a()V

    .line 4
    :cond_0
    iget v0, p0, LP5/d;->b:I

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, LP5/d;->j:LM5/e;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, LP5/d;->j:LM5/e;

    .line 7
    iput v1, p0, LP5/d;->b:I

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LP5/d;->next()LM5/e;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

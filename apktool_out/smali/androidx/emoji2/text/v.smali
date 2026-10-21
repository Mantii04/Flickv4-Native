.class public final Landroidx/emoji2/text/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/B;

.field public c:Landroidx/emoji2/text/B;

.field public d:Landroidx/emoji2/text/B;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/B;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/emoji2/text/v;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/v;->b:Landroidx/emoji2/text/B;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/B;->a:Landroid/util/SparseArray;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/emoji2/text/B;

    .line 14
    .line 15
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/v;->a:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v1, v3, :cond_2

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iput v3, p0, Landroidx/emoji2/text/v;->a:I

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 30
    .line 31
    iput v2, p0, Landroidx/emoji2/text/v;->f:I

    .line 32
    .line 33
    :goto_1
    move v2, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 38
    .line 39
    iget v0, p0, Landroidx/emoji2/text/v;->f:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    iput v0, p0, Landroidx/emoji2/text/v;->f:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const v0, 0xfe0e

    .line 46
    .line 47
    .line 48
    if-ne p1, v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const v0, 0xfe0f

    .line 55
    .line 56
    .line 57
    if-ne p1, v0, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 61
    .line 62
    iget-object v1, v0, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 63
    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    iget v1, p0, Landroidx/emoji2/text/v;->f:I

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    if-ne v1, v2, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/emoji2/text/v;->d:Landroidx/emoji2/text/B;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_7
    iput-object v0, p0, Landroidx/emoji2/text/v;->d:Landroidx/emoji2/text/B;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_8
    invoke-virtual {p0}, Landroidx/emoji2/text/v;->b()V

    .line 96
    .line 97
    .line 98
    :goto_2
    iput p1, p0, Landroidx/emoji2/text/v;->e:I

    .line 99
    .line 100
    return v2
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/v;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/v;->b:Landroidx/emoji2/text/B;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/emoji2/text/v;->f:I

    .line 10
    .line 11
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/emoji2/text/u;->isDefaultEmoji()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/v;->e:I

    .line 14
    .line 15
    const v2, 0xfe0f

    .line 16
    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

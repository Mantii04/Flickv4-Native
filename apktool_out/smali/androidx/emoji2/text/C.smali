.class public final Landroidx/emoji2/text/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld0/b;

.field public final b:[C

.field public final c:Landroidx/emoji2/text/B;

.field public final d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;Ld0/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/emoji2/text/C;->d:Landroid/graphics/Typeface;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/emoji2/text/C;->a:Ld0/b;

    .line 7
    .line 8
    new-instance p1, Landroidx/emoji2/text/B;

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/emoji2/text/B;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/emoji2/text/C;->c:Landroidx/emoji2/text/B;

    .line 16
    .line 17
    invoke-virtual {p2}, Ld0/b;->listLength()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    mul-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    new-array p1, p1, [C

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/emoji2/text/C;->b:[C

    .line 26
    .line 27
    invoke-virtual {p2}, Ld0/b;->listLength()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x0

    .line 32
    move v0, p2

    .line 33
    :goto_0
    if-ge v0, p1, :cond_1

    .line 34
    .line 35
    new-instance v1, Landroidx/emoji2/text/u;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/u;-><init>(Landroidx/emoji2/text/C;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/emoji2/text/u;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    mul-int/lit8 v3, v0, 0x2

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/emoji2/text/C;->b:[C

    .line 47
    .line 48
    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 49
    .line 50
    .line 51
    const-string v2, "emoji metadata cannot be null"

    .line 52
    .line 53
    invoke-static {v1, v2}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/emoji2/text/u;->getCodepointsLength()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x1

    .line 61
    if-lez v2, :cond_0

    .line 62
    .line 63
    move v2, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    move v2, p2

    .line 66
    :goto_1
    const-string v4, "invalid metadata codepoint length"

    .line 67
    .line 68
    invoke-static {v2, v4}, LL/h;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/emoji2/text/u;->getCodepointsLength()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    sub-int/2addr v2, v3

    .line 76
    iget-object v3, p0, Landroidx/emoji2/text/C;->c:Landroidx/emoji2/text/B;

    .line 77
    .line 78
    invoke-virtual {v3, v1, p2, v2}, Landroidx/emoji2/text/B;->a(Landroidx/emoji2/text/u;II)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/C;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    .line 2
    .line 3
    invoke-static {v0}, LI/s;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/emoji2/text/C;

    .line 7
    .line 8
    invoke-static {p1}, LV3/s;->p(Ljava/nio/ByteBuffer;)Ld0/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/C;-><init>(Landroid/graphics/Typeface;Ld0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, LI/s;->endSection()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {}, LI/s;->endSection()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method


# virtual methods
.method public getEmojiCharArray()[C
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/C;->b:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getMetadataList()Ld0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/C;->a:Ld0/b;

    .line 2
    .line 3
    return-object v0
.end method

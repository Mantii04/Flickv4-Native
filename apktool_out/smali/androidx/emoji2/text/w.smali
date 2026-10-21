.class public abstract Landroidx/emoji2/text/w;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint$FontMetricsInt;

.field public final b:Landroidx/emoji2/text/u;

.field public c:S

.field public d:F


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/w;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput-short v0, p0, Landroidx/emoji2/text/w;->c:S

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v0, p0, Landroidx/emoji2/text/w;->d:F

    .line 17
    .line 18
    const-string v0, "metadata cannot be null"

    .line 19
    .line 20
    invoke-static {p1, v0}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/emoji2/text/w;->b:Landroidx/emoji2/text/u;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getMetadata()Landroidx/emoji2/text/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/w;->b:Landroidx/emoji2/text/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Landroidx/emoji2/text/w;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 4
    .line 5
    .line 6
    iget p1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    .line 8
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 9
    .line 10
    sub-int/2addr p1, p3

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float/2addr p1, p3

    .line 19
    iget-object p3, p0, Landroidx/emoji2/text/w;->b:Landroidx/emoji2/text/u;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroidx/emoji2/text/u;->getHeight()S

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    int-to-float p4, p4

    .line 26
    div-float/2addr p1, p4

    .line 27
    iput p1, p0, Landroidx/emoji2/text/w;->d:F

    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/emoji2/text/u;->getHeight()S

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Landroidx/emoji2/text/u;->getWidth()S

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    iget p3, p0, Landroidx/emoji2/text/w;->d:F

    .line 38
    .line 39
    mul-float/2addr p1, p3

    .line 40
    float-to-int p1, p1

    .line 41
    int-to-short p1, p1

    .line 42
    iput-short p1, p0, Landroidx/emoji2/text/w;->c:S

    .line 43
    .line 44
    if-eqz p5, :cond_0

    .line 45
    .line 46
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 47
    .line 48
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 49
    .line 50
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 51
    .line 52
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 53
    .line 54
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 55
    .line 56
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 57
    .line 58
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 59
    .line 60
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 61
    .line 62
    :cond_0
    return p1
.end method

.class public final LI2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI2/l;


# instance fields
.field public final synthetic a:LI2/f;


# direct methods
.method public constructor <init>(LI2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI2/d;->a:LI2/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTimeUpdate(F)V
    .locals 5

    .line 1
    iget-object v0, p0, LI2/d;->a:LI2/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float v2, v1, p1

    .line 9
    .line 10
    invoke-static {v0, v2}, LI2/f;->a(LI2/f;F)V

    .line 11
    .line 12
    .line 13
    iget v2, v0, LI2/f;->p:F

    .line 14
    .line 15
    iget v3, v0, LI2/f;->q:F

    .line 16
    .line 17
    cmpg-float v4, v2, v3

    .line 18
    .line 19
    if-gez v4, :cond_0

    .line 20
    .line 21
    sub-float v2, v3, v2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    iget v4, v0, LI2/f;->t:F

    .line 26
    .line 27
    sub-float/2addr v4, v3

    .line 28
    sub-float/2addr v4, v2

    .line 29
    mul-float/2addr v4, p1

    .line 30
    sub-float/2addr v3, v2

    .line 31
    add-float/2addr v3, v4

    .line 32
    iput v3, v0, LI2/f;->p:F

    .line 33
    .line 34
    const/high16 v2, 0x42c80000    # 100.0f

    .line 35
    .line 36
    sub-float/2addr v1, p1

    .line 37
    mul-float/2addr v1, v2

    .line 38
    float-to-int p1, v1

    .line 39
    iput p1, v0, LI2/f;->f:I

    .line 40
    .line 41
    iget v1, v0, LI2/f;->g:I

    .line 42
    .line 43
    int-to-float p1, p1

    .line 44
    invoke-static {v1, p1}, LI2/a;->getNewColorAlpha(IF)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, v0, LI2/f;->e:I

    .line 49
    .line 50
    iget-object p1, v0, LI2/f;->w:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget v1, v0, LI2/f;->e:I

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, LI2/f;->a:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

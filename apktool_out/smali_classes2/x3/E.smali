.class public final Lx3/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/L;


# instance fields
.field public final synthetic a:Lx3/F;


# direct methods
.method public constructor <init>(Lx3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/E;->a:Lx3/F;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;LM/h1;)LM/h1;
    .locals 5

    .line 1
    iget-object p1, p0, Lx3/E;->a:Lx3/F;

    .line 2
    .line 3
    iget-object v0, p1, Lx3/F;->e:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p1, Lx3/F;->e:Landroid/graphics/Rect;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Lx3/F;->e:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetLeft()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetTop()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetRight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetBottom()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lx3/F;->onInsetsChanged(LM/h1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, LM/h1;->hasSystemWindowInsets()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p1, Lx3/F;->b:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, LM/p0;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, LM/h1;->consumeSystemWindowInsets()LM/h1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

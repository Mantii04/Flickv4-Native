.class public final LR1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/afollestad/materialdialogs/internal/MDRootLayout;


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR1/a;->f:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 5
    .line 6
    iput-object p2, p0, LR1/a;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-boolean p3, p0, LR1/a;->e:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, LR1/a;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/webkit/WebView;

    .line 11
    .line 12
    sget v2, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->A:I

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-float v3, v3

    .line 24
    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    mul-float/2addr v1, v3

    .line 29
    cmpg-float v1, v2, v1

    .line 30
    .line 31
    iget-boolean v2, p0, LR1/a;->e:Z

    .line 32
    .line 33
    iget-object v3, p0, LR1/a;->f:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 34
    .line 35
    if-gez v1, :cond_0

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Landroid/view/ViewGroup;

    .line 39
    .line 40
    invoke-virtual {v3, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iput-boolean v1, v3, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 48
    .line 49
    :cond_1
    iput-boolean v1, v3, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    return v0
.end method

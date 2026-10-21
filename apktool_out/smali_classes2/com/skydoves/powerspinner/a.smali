.class public final Lcom/skydoves/powerspinner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/powerspinner/a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    iget-object v3, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v3, v2, :cond_1

    .line 33
    .line 34
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_1
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

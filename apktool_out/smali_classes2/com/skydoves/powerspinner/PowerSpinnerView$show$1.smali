.class final Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements LH5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "LH5/a;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    iput p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->e:I

    iput p3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->f:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->invoke()V

    sget-object v0, Lu5/j;->a:Lu5/j;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$setShowing$p(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 4
    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$animateArrow(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 5
    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$applyWindowAnimation(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 6
    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->e:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->f:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 7
    new-instance v1, Lcom/skydoves/powerspinner/a;

    invoke-direct {v1, p0}, Lcom/skydoves/powerspinner/a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

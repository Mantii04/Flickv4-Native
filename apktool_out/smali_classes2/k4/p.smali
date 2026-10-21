.class public final Lk4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lk4/r;


# direct methods
.method public constructor <init>(Lk4/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk4/p;->b:Lk4/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/p;->b:Lk4/r;

    .line 2
    .line 3
    iget-object v0, v0, Lk4/r;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getOnSpinnerDismissListener()Lk4/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lk4/e;->onDismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

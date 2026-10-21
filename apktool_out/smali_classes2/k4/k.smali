.class public final Lk4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk4/k;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lk4/k;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2, v2, p1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

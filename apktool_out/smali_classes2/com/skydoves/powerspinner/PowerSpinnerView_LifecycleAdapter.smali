.class public Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;


# instance fields
.field public final a:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/D;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    move v0, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    .line 12
    if-ne p2, p3, :cond_3

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const-string p2, "onDestroy"

    .line 17
    .line 18
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/D;->approveCall(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->onDestroy()V

    .line 27
    .line 28
    .line 29
    :cond_3
    :goto_1
    return-void
.end method

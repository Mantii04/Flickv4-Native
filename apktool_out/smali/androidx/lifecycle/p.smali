.class public final Landroidx/lifecycle/p;
.super Landroidx/lifecycle/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Landroidx/lifecycle/O;->e:Landroidx/lifecycle/M;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/lifecycle/M;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

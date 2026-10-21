.class public final Landroidx/lifecycle/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final get()Landroidx/lifecycle/t;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/lifecycle/J;->access$getNewInstance$cp()Landroidx/lifecycle/J;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final init$lifecycle_process_release(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/lifecycle/J;->access$getNewInstance$cp()Landroidx/lifecycle/J;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/J;->attach$lifecycle_process_release(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

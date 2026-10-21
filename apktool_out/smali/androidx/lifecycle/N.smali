.class public final Landroidx/lifecycle/N;
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
.method public final registerIn(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/O$a;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/O$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, LI3/v;->m(Landroid/app/Activity;Landroidx/lifecycle/O$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

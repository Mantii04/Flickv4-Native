.class public final LM/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/o;

.field public b:Landroidx/lifecycle/r;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/A;->a:Landroidx/lifecycle/o;

    .line 5
    .line 6
    iput-object p2, p0, LM/A;->b:Landroidx/lifecycle/r;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->addObserver(Landroidx/lifecycle/s;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

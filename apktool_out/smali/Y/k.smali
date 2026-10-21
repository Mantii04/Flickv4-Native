.class public final LY/k;
.super LY/m;
.source "SourceFile"


# instance fields
.field public final a:LY/p;


# direct methods
.method public constructor <init>(LY/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY/p;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, LY/m;-><init>(Lkotlin/jvm/internal/g;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LY/k;->a:LY/p;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getLastState()LY/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LY/p;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LY/k;->a:LY/p;

    .line 2
    .line 3
    return-object v0
.end method

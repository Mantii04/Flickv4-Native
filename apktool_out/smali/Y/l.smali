.class public final LY/l;
.super LY/m;
.source "SourceFile"


# instance fields
.field public final a:LH5/p;

.field public final b:LR5/v;

.field public final c:LY/p;

.field public final d:Ly5/k;


# direct methods
.method public constructor <init>(LH5/p;LR5/v;LY/p;Ly5/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/p;",
            "LR5/v;",
            "LY/p;",
            "Ly5/k;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callerContext"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, LY/m;-><init>(Lkotlin/jvm/internal/g;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LY/l;->a:LH5/p;

    .line 21
    .line 22
    iput-object p2, p0, LY/l;->b:LR5/v;

    .line 23
    .line 24
    iput-object p3, p0, LY/l;->c:LY/p;

    .line 25
    .line 26
    iput-object p4, p0, LY/l;->d:Ly5/k;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getAck()LR5/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR5/v;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LY/l;->b:LR5/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallerContext()Ly5/k;
    .locals 1

    .line 1
    iget-object v0, p0, LY/l;->d:Ly5/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastState()LY/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LY/p;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LY/l;->c:LY/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransform()LH5/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LH5/p;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LY/l;->a:LH5/p;

    .line 2
    .line 3
    return-object v0
.end method

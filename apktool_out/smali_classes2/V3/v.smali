.class public abstract LV3/v;
.super LV3/w;
.source "SourceFile"


# instance fields
.field public final b:LV3/F;


# direct methods
.method public constructor <init>(LV3/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV3/F;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LV3/w;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, LV3/F;

    .line 9
    .line 10
    iput-object p1, p0, LV3/v;->b:LV3/F;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final delegate()LV3/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV3/F;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LV3/v;->b:LV3/F;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LV3/v;->delegate()LV3/F;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 2
    invoke-virtual {p0}, LV3/v;->delegate()LV3/F;

    move-result-object v0

    return-object v0
.end method

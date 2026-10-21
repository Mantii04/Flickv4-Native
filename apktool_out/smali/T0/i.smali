.class public final LT0/i;
.super LS0/n;
.source "SourceFile"


# instance fields
.field public final f:Lu0/g;


# direct methods
.method public constructor <init>(Lu0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LS0/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT0/i;->f:Lu0/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/i;->f:Lu0/g;

    .line 2
    .line 3
    check-cast v0, LA0/a;

    .line 4
    .line 5
    iget-object v0, v0, LA0/a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, LT0/j;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, LT0/j;->releaseOutputBuffer(LS0/n;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

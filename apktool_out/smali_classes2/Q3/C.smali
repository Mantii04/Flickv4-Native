.class public final LQ3/C;
.super LQ3/t0;
.source "SourceFile"


# instance fields
.field public final synthetic e:LP3/p;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;LP3/p;)V
    .locals 0

    .line 1
    iput-object p2, p0, LQ3/C;->e:LP3/p;

    .line 2
    .line 3
    invoke-direct {p0, p1}, LQ3/t0;-><init>(Ljava/util/Iterator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LQ3/C;->e:LP3/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

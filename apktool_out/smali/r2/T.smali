.class public final Lr2/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr2/Q;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr2/Q;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, LG2/o;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr2/T;->a:Lr2/Q;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lr2/S;->a(Ljava/lang/Object;II)Lr2/S;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lr2/T;->a:Lr2/Q;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, LG2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lr2/S;->release()V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lr2/S;->a(Ljava/lang/Object;II)Lr2/S;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lr2/T;->a:Lr2/Q;

    .line 6
    .line 7
    invoke-virtual {p2, p1, p4}, LG2/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

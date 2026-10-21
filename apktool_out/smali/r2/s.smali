.class public final Lr2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# instance fields
.field public final a:Lr2/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr2/r;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr2/s;->a:Lr2/r;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    new-instance p1, Lr2/t;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/s;->a:Lr2/r;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lr2/t;-><init>(Lr2/p;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

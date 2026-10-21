.class public final LT1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/m;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LT1/m;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, LT1/m;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()LT1/L;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT1/L;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT1/m;->e:Ljava/lang/String;

    iget-object v1, p0, LT1/m;->f:Ljava/lang/String;

    iget-object v2, p0, LT1/m;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, LT1/q;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LT1/L;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT1/m;->call()LT1/L;

    move-result-object v0

    return-object v0
.end method

.class public final Lf1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf1/c;

.field public final synthetic e:Lf1/v;

.field public final synthetic f:Ljava/util/Collection;

.field public final synthetic j:Lf1/C;


# direct methods
.method public constructor <init>(Lf1/C;Lf1/c;Lf1/v;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/z;->j:Lf1/C;

    .line 5
    .line 6
    iput-object p2, p0, Lf1/z;->b:Lf1/c;

    .line 7
    .line 8
    iput-object p3, p0, Lf1/z;->e:Lf1/v;

    .line 9
    .line 10
    iput-object p4, p0, Lf1/z;->f:Ljava/util/Collection;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/z;->f:Ljava/util/Collection;

    .line 2
    .line 3
    iget-object v1, p0, Lf1/z;->j:Lf1/C;

    .line 4
    .line 5
    iget-object v2, p0, Lf1/z;->e:Lf1/v;

    .line 6
    .line 7
    iget-object v3, p0, Lf1/z;->b:Lf1/c;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2, v0}, Lf1/c;->onRoutesChanged(Lf1/C;Lf1/v;Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.class public final LJ/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:LJ/i;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;LJ/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/j;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LJ/j;->e:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, LJ/j;->f:LJ/i;

    .line 9
    .line 10
    iput p4, p0, LJ/j;->j:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public call()LJ/n;
    .locals 4

    .line 2
    iget-object v0, p0, LJ/j;->f:LJ/i;

    iget v1, p0, LJ/j;->j:I

    iget-object v2, p0, LJ/j;->b:Ljava/lang/String;

    iget-object v3, p0, LJ/j;->e:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, LJ/o;->a(Ljava/lang/String;Landroid/content/Context;LJ/i;I)LJ/n;

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
    invoke-virtual {p0}, LJ/j;->call()LJ/n;

    move-result-object v0

    return-object v0
.end method

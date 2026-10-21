.class public final LJ2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic j:LJ2/i;


# direct methods
.method public constructor <init>(LJ2/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ2/g;->j:LJ2/i;

    .line 5
    .line 6
    iput-object p2, p0, LJ2/g;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, LJ2/g;->e:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, LJ2/g;->f:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, LJ2/g;->j:LJ2/i;

    .line 3
    .line 4
    iget-object v2, p0, LJ2/g;->b:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v3, p0, LJ2/g;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, LJ2/g;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, v4}, LJ2/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :catch_0
    throw v0

    .line 15
    :catch_1
    throw v0
.end method

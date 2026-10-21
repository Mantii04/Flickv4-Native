.class public final LI3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LI3/t;


# direct methods
.method public constructor <init>(LI3/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI3/m;->b:LI3/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LI3/m;->b:LI3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, LI3/t;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

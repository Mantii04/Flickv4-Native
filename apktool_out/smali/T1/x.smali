.class public final LT1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/x;->a:LT1/G;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, LT1/x;->a:LT1/G;

    .line 2
    .line 3
    invoke-virtual {p1}, LT1/G;->playAnimation()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

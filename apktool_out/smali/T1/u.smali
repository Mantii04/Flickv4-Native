.class public final LT1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/u;->b:LT1/G;

    .line 5
    .line 6
    iput p2, p0, LT1/u;->a:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 1

    .line 1
    iget-object p1, p0, LT1/u;->b:LT1/G;

    .line 2
    .line 3
    iget v0, p0, LT1/u;->a:F

    .line 4
    .line 5
    invoke-virtual {p1, v0}, LT1/G;->setProgress(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

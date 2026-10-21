.class public final LT1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/z;->b:LT1/G;

    .line 5
    .line 6
    iput p2, p0, LT1/z;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 1

    .line 1
    iget-object p1, p0, LT1/z;->b:LT1/G;

    .line 2
    .line 3
    iget v0, p0, LT1/z;->a:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, LT1/G;->setMinFrame(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

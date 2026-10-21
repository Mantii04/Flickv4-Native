.class public final LT1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/E;->b:LT1/G;

    .line 5
    .line 6
    iput-object p2, p0, LT1/E;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 1

    .line 1
    iget-object p1, p0, LT1/E;->b:LT1/G;

    .line 2
    .line 3
    iget-object v0, p0, LT1/E;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, LT1/G;->setMaxFrame(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

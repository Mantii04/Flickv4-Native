.class public final LE1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LE1/m;

.field public final e:Landroid/content/Intent;

.field public final f:I


# direct methods
.method public constructor <init>(ILE1/m;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LE1/j;->b:LE1/m;

    .line 5
    .line 6
    iput-object p3, p0, LE1/j;->e:Landroid/content/Intent;

    .line 7
    .line 8
    iput p1, p0, LE1/j;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LE1/j;->e:Landroid/content/Intent;

    .line 2
    .line 3
    iget v1, p0, LE1/j;->f:I

    .line 4
    .line 5
    iget-object v2, p0, LE1/j;->b:LE1/m;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, LE1/m;->add(Landroid/content/Intent;I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

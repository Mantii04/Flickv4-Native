.class public final LJ/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LJ/r;

.field public final synthetic e:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(LJ/r;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/a;->b:LJ/r;

    .line 5
    .line 6
    iput-object p2, p0, LJ/a;->e:Landroid/graphics/Typeface;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LJ/a;->b:LJ/r;

    .line 2
    .line 3
    iget-object v1, p0, LJ/a;->e:Landroid/graphics/Typeface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LJ/r;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

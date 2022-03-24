.class LmasterX/goblok/ehmaaf/OoOo$3;
.super Ljava/lang/Object;
.source "OoOo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LmasterX/goblok/ehmaaf/OoOo;->get(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, LmasterX/goblok/ehmaaf/OoOo$3;->val$alert:Landroid/app/AlertDialog;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, LmasterX/goblok/ehmaaf/OoOo$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    return-void
.end method

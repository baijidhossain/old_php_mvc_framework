     <!-- Add -->

     <?php
      if ($data['action'] == "add") { ?>

       <div class="modal-header">
         <?php $this->getAlert(); ?>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span></button>
         <h4 class="modal-title"><?php echo $data['modal_title']; ?></h4>
       </div>
       <form method="POST" action="<?= APP_URL?>/admin/color/add">
         <div class="modal-body">

           <div class="box-body">

             <div class="form-group">
               <label for="exampleInputEmail1"><i class="fa fa-shopping-bbuilding"></i> Color Name</label>
               <input name="name" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Name">
             </div>
           </div>
           <!-- /.box-body -->
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default " data-dismiss="modal"> Close</button>
           <button type="submit" name="addColor" class="btn btn-primary">Save</button>
         </div>
       </form>

     <?php
      }
      ?>
     <!-- end add -->


     <!-- edit -->
     <?php
      if ($data['action'] == "edit") { ?>


       <div class="modal-header">
         <?php $this->getAlert(); ?>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span></button>
         <h4 class="modal-title"><?php echo $data['modal_title']; ?></h4>
       </div>
       <form method="POST" action="<?= APP_URL ?>/admin/color/update">
         <div class="modal-body">

           <div class="box-body">
            
             <input value="<?= $data['color']['id']; ?>" type="text" hidden name="id" id="">
             <div class="form-group">
               <label for="exampleInputEmail1"><i class="fa fa-shopping-bbuilding"></i> Color Name</label>
               <input value="<?= $data['color']['name']; ?>" name="name" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Name">
             </div>
           </div>
           <!-- /.box-body -->
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default " data-dismiss="modal"> Close</button>
           <button type="submit" name="updateColor" class="btn btn-primary">Save</button>
         </div>
       </form>
     <?php
      }
      ?>
     <!-- end edit -->
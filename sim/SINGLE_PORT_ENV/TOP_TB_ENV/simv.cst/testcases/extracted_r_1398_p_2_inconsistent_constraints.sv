class c_1398_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1398_2;
    c_1398_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zzx1xzx000x100x1x000101z11z0xxxzzxzzxzzxzzzxxxzxxxxxxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_1364_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1364_2;
    c_1364_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00x1zxxzxz1zzxzz0zx0zz100zx001zxxxzxzxxzzxxxxzxzzxxzzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

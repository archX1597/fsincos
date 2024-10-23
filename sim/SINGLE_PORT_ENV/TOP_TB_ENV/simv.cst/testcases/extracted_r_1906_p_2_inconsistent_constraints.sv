class c_1906_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1906_2;
    c_1906_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxzxz1x011x01x101z010xz1z1z00xxxzxzzxzxzxxxxzzxzzzxzxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

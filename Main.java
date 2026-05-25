public class Main {
    // static int max(int x, int y){
    //     if(x>y){
    //         return x;
    //     }else{
    //         return y;
    //     }
    //     return x;

    // }
    public static void main(String[] args) {
        int[] ia = {1,2,3,4};
        String[]sa = new String[4];

        sa[0] = "java";
        sa[1] = "C++";
        sa[2] = "Ruby";
        sa[3] = "Python";
        //System.out.println(sa.length);
        double d = 3.14;
        long l = 5L;

        //int ll = 123456789012345; エラー
        long lll = 123456789012345L;

        for(int i = 0; i < sa.length; i++){
            System.out.println(sa[i]);
        }

        String xx = 5 > 3 ?"five":"three";

        // final double pi = 3.14; //finalにより、変数の変更を不可能にしている
        // pi *= 2;
        // System.out.println(pi);

        for(String s: args){
            System.out.println(s + "★");
        }
        


    }
    
}

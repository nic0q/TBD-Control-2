package cl.tbd.ejemplo1.repositories;

import cl.tbd.ejemplo1.models.Voluntary;
import java.util.List;

public interface VoluntaryRepository {
  public int countVoluntary();

  public List<Voluntary> getAllVoluntaries();

  public Voluntary createVoluntary(Voluntary voluntary);

  public List<Voluntary> getVoluntaryById(int id);

  public boolean deleteVoluntary(int id);

  public boolean editVoluntary(int id, Voluntary voluntary);
}
